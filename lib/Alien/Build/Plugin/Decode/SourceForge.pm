package Alien::Build::Plugin::Decode::SourceForge;

use strict;
use warnings;
use 5.008001;
use Alien::Build::Plugin;
use URI;

# ABSTRACT: Alien::Build plugin to handle SourceForge links
# VERSION

=head1 SYNOPSIS

 use alienfile;
 
 plugin 'Decode::SourceForge';

=head1 DESCRIPTION

SourceForge is a website that offers software developers a centralized online location to
manage their Open Source projects.  One of the challenges it presents is that projects
hosted by SourceForge add the unnecessary suffix C</download> to links of tarballs, which
confuses the way L<Alien::Base> computes the filename based on URLs.  This plugin solves
this problem by rewriting the filenames returned by the configured decode plugin.

=head1 SEE ALSO

=over 4

=item L<Alien>

=item L<alienfile>

=item L<Alien::Build>

=item L<Alien::Base>

=back

=cut

sub init
{
  my($self, $meta) = @_;

  $meta->add_requires( 'configure' => 'Alien::Build::Plugin::Decode::SourceForge' => 0 );

  $meta->around_hook(
    decode => sub {
      my($orig, $build, $html) = @_;

      my $list = $orig->($build, $html);

      if($list->{type} eq 'list')
      {

        @{ $list->{list} } = map { _rewrite($_) } @{ $list->{list} }

      }

      $list;
    },
  );
}

sub _rewrite
{
  my($link) = @_;

  my $uri = URI->new($link->{url});

  return $link unless $uri->host eq 'sourceforge.net';

  if($uri->path =~ m{/([^/]+)/download$})
  {
    return {
      filename => $1,
      url      => $link->{url},
    };
  }
  else
  {
    return $link;
  }
}

1;
