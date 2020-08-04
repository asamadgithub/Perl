#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


my $counter = 1;
my $x;
my $table=2;
my $number;

while ( $table <= 11) {

       while ($counter < 11) {

       $x= $table*$counter;
       #say $x;
       say "$table X $counter = $x";
       $counter += 1;
       }
       $counter = 1;
       $table +=1;
       say "\n";
    }

say 'done';
