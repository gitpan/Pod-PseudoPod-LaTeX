# Note: this file was auto-generated by Module::Build::Compat version 0.03
use ExtUtils::MakeMaker;
WriteMakefile
(
          'NAME' => 'Pod::PseudoPod::LaTeX',
          'VERSION_FROM' => 'lib/Pod/PseudoPod/LaTeX.pm',
          'PREREQ_PM' => {
                           'Pod::PseudoPod' => '0',
                           'Test::More' => '0'
                         },
          'INSTALLDIRS' => 'site',
          'EXE_FILES' => [
                           'scripts/ppod2latex'
                         ],
          'PL_FILES' => {}
        )
;