
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'convert Pod::PseudoPod documents into LaTeX',
                       'script_files' => [
                                           'bin/ppod2latex'
                                         ],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::More' => '0.60',
                                             'IO::String' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'dist_name' => 'Pod-PseudoPod-LaTeX',
                       'dist_author' => [
                                          'chromatic <chromatic@cpan.org>'
                                        ],
                       'module_name' => 'Pod::PseudoPod::LaTeX',
                       'requires' => {
                                       'perl' => '5.008006',
                                       'Pod::PseudoPod' => '0.16',
                                       'File::Spec::Functions' => '0',
                                       'File::Basename' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '1.101650'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
