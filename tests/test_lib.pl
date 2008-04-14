#!/usr/bin/perl

# Tests for l2p library functions
my @testdata = (
    {'infile' => 'foo_png',
     'ext'    => undef,
    },
    {'infile' => 'foo.png',
     'ext'    => 'png',
    },
    {'infile' => 'path/to/foo.png',
     'ext'    => 'png',
    },
    {'infile' => '/path/to/foo.png',
     'ext'    => 'png',
    },
    {'infile' => '/path/to/some.foo.png',
     'ext'    => 'png',
    },
    {'infile' => 'foo.png',
     'ext'    => 'png',
    },
    {'infile' => 'foo.jpg',
     'ext'    => 'jpg',
    },
    {'infile' => 'path/to/foo.jpg',
     'ext'    => 'jpg',
    },
    {'infile' => '/path/to/foo.jpg',
     'ext'    => 'jpg',
    },
    {'infile' => '/path/to/some.foo.jpg',
     'ext'    => 'jpg',
    },
    {'infile' => 'foo.jpg',
     'ext'    => 'jpg',
    },
    );

# The cases here are sloppy w.r.t. undef.  Run with the -w switch to see this.
for(my $i=0; $i<@testdata; ++$i) {
    $td = $testdata[$i];
    $expected = $td->{'ext'};
    $actual = extract_ext($td->{'infile'});
    if ($expected ne $actual) {
        die "e: $expected, a: $actual [$i]";
    }
}
    
