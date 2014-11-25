use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  VERSION   => '0.01',
  PREREQ_PM => {'Mojolicious' => '5.62'},
  EXE_FILES => [ 'script/video_host' ],
  test      => {TESTS => 't/*.t'}
);
