#!/usr/bin/perl

use strict;
use warnings;

# hexXOR.pl
# 
# do bitwise XOR of two hexadecimal values
# intnetion is to be able to XOR MD5 hash values
# 
# Created 2017-10-21
# Modified 2017-10-21
# Version 1.0
# 
# written by Theron Trowbridge

sub min($$);

if ( $#ARGV != 1 ) { die "Usage: $0 <string1> <string2>\n"; }

my ( $str1, $str2 ) = @ARGV;
my $formatString = "H" . min( length( $str1 ), length( $str2 ) );
my $output = pack( $formatString, $str1 ) ^ pack( $formatString, $str2 );
my $outputStr = unpack( $formatString, $output );

print( "$outputStr\n" );

sub min($$) {
    my $a = shift(@_);
    my $b = shift(@_);
    
    if ( $a < $b ) { return( $a ) } else { return( $b ); }
}
