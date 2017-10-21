#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw( min );


# hexXOR.pl
# 
# do bitwise XOR of two hexadecimal values
# intnetion is to be able to XOR MD5 hash values
# 
# Created 2017-10-21
# Modified 2017-10-21
# Version 0.9
# 
# written by Theron Trowbridge

if ( $#ARGV != 1 ) { die "Usage: $0 <string1> <string2>\n"; }

my ( $hex1, $hex2 ) = @ARGV;

print "TEST: argument 1: $hex1\n";
print "TEST: argument 2: $hex2\n";
