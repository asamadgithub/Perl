#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;


my $filename = 'variable_length.txt';
if ($ARGV[0]) { 
   $filename = $ARGV[0]
   };

#------------------------------
my %hash1 = ("A","3",
            "B","4",
            "C","5",
            "D","6");
my %hash2;

#-----------------------------


open (my $fh , '<' , $filename) or die "Could not opne the '$filename'.$!";
 while ( my $line = <$fh> ){
    chomp $line;
     if (substr($line,0,1) eq "#"){next;}
      my $trim_line = substr($line,16,-16);
    #  print "before second::  $trim_line\n"; 
         
         while($trim_line){
           my$x=substr($trim_line,0,1,"");
           foreach my $y(keys %hash1){
            if ($y eq $x){
            $hash2{$y}++;
       }
    }
  }
 
}



foreach my $z(sort keys %hash2){print "$z appear --> $hash2{$z}\n";}
