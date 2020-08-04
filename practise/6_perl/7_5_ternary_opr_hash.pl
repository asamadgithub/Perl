#!/usr/bin/perl
use strict;
use warnings;


my %a = ( "name1" , "key1" , "name2" , "key2", "name3", "key3", "name4", "key4");

my @array1 = keys %a;

print "Keys of hash list is : @array1\n";

print "\n--------------------------------\n";

@array1 = sort(keys %a);

print "sorted list of hashe is: @array1\n";


foreach my $x (@array1){
print "$x ----> $a{$x}\n";
}

print "\n---------------------------------------------------\n";


foreach my $x (@array1){ 
  defined $x ? print "$x <---> $a{$x}\n" : print "$x is not defined\n";
   }

