# Alien::Build::Plugin::Decode::SourceForge [![Build Status](https://secure.travis-ci.org/plicease/Alien-Build-Plugin-Decode-SourceForge.png)](http://travis-ci.org/plicease/Alien-Build-Plugin-Decode-SourceForge)

Alien::Build plugin to handle SourceForge links

# SYNOPSIS

    use alinfile;
    
    plugin 'Decode::SourceForge';

# DESCRIPTION

SourceForge is a website that offers software developers a centralized online location to
manage their Open Source projects.  One of the challenges it presents is that projects
hosted by SourceForge add the unnecessary suffix `/download` to links of tarballs, which
confuses the way [Alien::Base](https://metacpan.org/pod/Alien::Base) computes the filename based on URLs.  This plugin solves
this problem by rewriting the filenames returned by the [Alien::Build::Plugin::Decode::HTML](https://metacpan.org/pod/Alien::Build::Plugin::Decode::HTML)
plugin.

# SEE ALSO

- [Alien](https://metacpan.org/pod/Alien)
- [alienfile](https://metacpan.org/pod/alienfile)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [Alien::Base](https://metacpan.org/pod/Alien::Base)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
