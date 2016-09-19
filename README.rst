vagrant-embedded
=============================
At the moment this is a little sandbox I'm using while on my quest to find
a nice, portable embedded development environment that lets me do all of the
things on my wishlist.

Some of these things include:

* Free as in beer
* Free as in speech
* No silicon vendor lock-in
* Supports test-driven development
* Supports multi-targeting
* Supports continuous integration
* Doesn't mandate a particular text editor or IDE
* Let's me automate away some of the annoying boilerplate stuff
* Extensible

After some experimentation I've determined that, so far, the easiest path
to hitting the majority of the above bullet points is to spend some time with
`PlatformIO <http://platformio.org/>`_. PlatformIO looks really promising.
They appear to have automated a lot of the drudgery associated with downloading
and installing various toolchains, have a package management system, support
multiple frameworks, and use the super powerful `SCons <http://scons.org/>`_ under
the hood for their build system. I'm really hoping it'll be easy to add custom boards,
use custom libraries, and take or leave the 3rd party frameworks as I see fit.
I'll be experimenting with a few different boards and projects to test the
suitability of PlatformIO for both hobbyist and commercial applications.

Notes
-----

* When uploading to target it looks like sudo is necessary at the moment

``$ sudo platformio run --target upload ``
