# Alien::Build::Plugin::Decode::SourceForge ![linux](https://github.com/uperl/Alien-Build-Plugin-Decode-SourceForge/workflows/linux/badge.svg) ![macos](https://github.com/uperl/Alien-Build-Plugin-Decode-SourceForge/workflows/macos/badge.svg) ![windows](https://github.com/uperl/Alien-Build-Plugin-Decode-SourceForge/workflows/windows/badge.svg) ![msys2-mingw](https://github.com/uperl/Alien-Build-Plugin-Decode-SourceForge/workflows/msys2-mingw/badge.svg)

Alien::Build plugin to handle SourceForge links

# SYNOPSIS

```perl
use alienfile;

plugin 'Decode::SourceForge';
```

# DESCRIPTION

SourceForge is a website that offers software developers a centralized online location to
manage their Open Source projects.  One of the challenges it presents is that projects
hosted by SourceForge add the unnecessary suffix `/download` to links of tarballs, which
confuses the way [Alien::Base](https://metacpan.org/pod/Alien::Base) computes the filename based on URLs.  This plugin solves
this problem by rewriting the filenames returned by the configured decode plugin.

# SEE ALSO

- [Alien](https://metacpan.org/pod/Alien)
- [alienfile](https://metacpan.org/pod/alienfile)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [Alien::Base](https://metacpan.org/pod/Alien::Base)

# AUTHOR

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Alexandr Ciornii (CHORNY)

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017-2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
