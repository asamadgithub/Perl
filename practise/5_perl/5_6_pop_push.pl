#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


print "\n\n";
my @a = qw(one two three four five six seven);
#my @a = ('one', 'two', 'three', 'four', 'five', 'six', 'seven');
foreach (@a){
print "@a\n"
}

my $x; #= pop @a;
$x= pop @a;
print "x variable now is:::::  $x\n";


my @b = qw(8 9 10 11 12);
push (@a,@b);

print qq(The array a had become: @a\n);

#-------------shift,unshift section---------------------- 
print qq(----------------- shift, unshift section --------------\n);
my @c = qw(shift1 shift2 shift3 shift4 shift5 shift6);
print "array c has values: @c\n";
my $d =shift @c;
print "d has value: $d\n";
print "array c has values after shift: @c\n";






print "\n----------";

