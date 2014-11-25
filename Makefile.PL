use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME      => 'VideoHost',
  VERSION_FROM => 'lib/VideoHost.pm',
  PREREQ_PM => {'Mojolicious' => '5.62'},
  EXE_FILES => [ 'script/video_host' ],
  test      => {TESTS => 't/*.t'}
);
