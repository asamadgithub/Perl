#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


#----------Defining the file name, or commad line paramter for file"
my $filename = "aaa.txt";
  if( defined $ARGV[0]) {
   $filename = $ARGV[0];
   }

#---------------------------------------
my $sum=0;
my @array;
#---------Open the file and some operation
open (my $fh , '<', $filename ) 
      or die "Could not opne the '$filename'.$!";
   while ( my $reader = <$fh> ) {
      #  chomp $reader; 
       print "$reader";
          
      @array  = split /,/, $reader;
      $sum=$sum+$array[2];
       chomp $reader; 
       }
print "\nThe sum is $sum\n";


