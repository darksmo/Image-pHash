use 5.010001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Image::pHash',
    VERSION_FROM      => 'lib/Image/pHash.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Image/pHash.pm', # retrieve abstract from module
       AUTHOR         => 'Vladimir Perepelitsa <v.perepelitsa@localdomain>') : ()),
    LIBS              => ['-ljpeg -lpng -lstdc++'], # e.g., '-lm'
    DEFINE            => '-O2 -ffast-math -O3', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
	CC                => 'g++',
	XSOPT             => '-C++',
);

