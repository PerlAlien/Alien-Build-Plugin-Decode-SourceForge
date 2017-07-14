use Test2::V0 -no_srand => 1;
use Test::Alien::Build;
use Alien::Build::Plugin::Decode::SourceForge;

my $build = alienfile_ok q{
  use alienfile;
  
  share {
  
    plugin 'Decode::SourceForge';
  
  };
};

done_testing
