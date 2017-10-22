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
sub xor($$);

if ( $#ARGV != 1 ) { die "Usage: $0 <string1> <string2>\n"; }

my ( $str1, $str2 ) = @ARGV;

print &xor( $str1, $str2 ) . "\n";

sub xor($$) {
    my $param1 = shift(@_);
    my $param2 = shift(@_);
    my $formatString = "H" . min( length( $param1 ), length( $param2 ) );
    my $output = pack( $formatString, $param1 ) ^ pack( $formatString, $param2 );
    my $outputStr = unpack( $formatString, $output );
    return( $outputStr );
}

sub min($$) {
    my $a = shift(@_);
    my $b = shift(@_);
    
    if ( $a < $b ) { return( $a ) } else { return( $b ); }
}
