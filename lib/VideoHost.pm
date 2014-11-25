package VideoHost;

use Mojo::Base 'Mojolicious';
use VideoHost::Video::Storage;

use File::Basename 'dirname';
use File::Spec::Functions 'catdir';

our $VERSION = '1.0';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Switch to installable home directory
  $self->home->parse(catdir(dirname(__FILE__), 'VideoHost'));

  # Switch to installable "public" directory
  $self->static->paths->[0] = $self->home->rel_dir('public');

  # Switch to installable "templates" directory
  $self->renderer->paths->[0] = $self->home->rel_dir('templates');

  # Load config
  $self->plugin('Config');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('root#index');
  $r->get('/video/:short_name')->to('root#video_stream')->name('video');
  $r->get('/poster/:short_name')->to('root#poster')->name('poster');
  $r->get('/tracks/:short_name')->to('root#tracks')->name('tracks');

  $self->helper(videos => sub {
    my $self = shift;
    state $videos = VideoHost::Video::Storage->new(directory => $self->config->{ video_directory }); 
    return $videos;
  });


}

1;
