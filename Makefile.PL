
use strict;
use warnings;

use 5.008006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'convert Pod::PseudoPod documents into LaTeX',
  'AUTHOR' => 'chromatic',
  'BUILD_REQUIRES' => {
    'IO::String' => '0',
    'Test::More' => '0.60'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Pod-PseudoPod-LaTeX',
  'EXE_FILES' => [
    'bin/ppod2latex'
  ],
  'LICENSE' => 'perl',
  'NAME' => 'Pod::PseudoPod::LaTeX',
  'PREREQ_PM' => {
    'File::Basename' => '0',
    'File::Spec::Functions' => '0',
    'Pod::PseudoPod' => '0.16'
  },
  'VERSION' => '1.20110710',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



