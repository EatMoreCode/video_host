use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME      => 'VideoHost',
  AUTHOR    => 'Justin Hawkins <justin@eatmorecode.com>',
  ABSTRACT_FROM => 'lib/VideoHost.pm',
  VERSION_FROM => 'lib/VideoHost.pm',
  PREREQ_PM => {'Mojolicious' => '5.62'},
  EXE_FILES => [ 'script/video_host' ],
  test      => {TESTS => 't/*.t'},
  META_MERGE    => {
    resources => {
      bugtracker => 'https://github.com/eatmorecode/video_host/issues',
      homepage   => 'https://github.com/eatmorecode/video_host',
      repository => 'https://github.com/eatmorecode/video_host.git',
    },
  },

);
