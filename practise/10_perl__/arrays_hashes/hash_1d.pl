#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper qw(Dumper);

my %hash1;

$hash1{"key1"}="value1";
$hash1{"key2"}="value2";
$hash1{"key3"}="value3";
#--------------------------------
my %hash2=(
 style2_a=> "t2",
 style2_b=> "t3",
 style2_c=> "t4",
 style2_d=> "t5",
);


print scalar keys %hash1,"\n";


print Dumper \%hash1;
print Dumper \%hash2;
