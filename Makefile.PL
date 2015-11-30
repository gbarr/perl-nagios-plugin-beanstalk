use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Monitoring::Plugin::Beanstalk',
  AUTHOR       => 'Graham Barr <gbarr@pobox.com>',
  VERSION_FROM => 'lib/Monitoring/Plugin/Beanstalk.pm',
  ABSTRACT_FROM => 'lib/Monitoring/Plugin/Beanstalk.pm',
  PL_FILES     => {},
  EXE_FILES    => ['check_beanstalkd'],
  PREREQ_PM => {
    'Monitoring::Plugin' => 0,
    'Beanstalk::Client' => 0,
    'Test::More' => 0,
  },
  dist     => {COMPRESS => 'gzip -9f', SUFFIX => 'gz',},
  clean => {FILES => 'cover_db pm_to_blib'},
);

