#!/usr/bin/perl
use strict;
use warnings;


my %a = ( "name1" , "key1" , "name2" , "key2" );

print "$a{name2}\n";

print "-----------------\n";

$a{name3} = "key3";

print "$a{name3}\n";

my @array = %a;

print "@array\n";

