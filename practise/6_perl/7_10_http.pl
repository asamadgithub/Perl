#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;


my @input = (
'aaa=111&bbb=222&ccc=3333',
'dddd=444&eee=555&fff=6666',
'www.youtube.com/watch?v=Y9y-s40NiUo&list=PLw7UYp3N0eUYiICZUFR3p299TvjXZ4zFj&index=105',
);

my %data;
print "$input[0]\n$input[1]\n-----------------------\n";

foreach my $str(@input){
 my @pairs=split(/&/,$str);
  #print "@pairs\n";

     foreach my $p (@pairs){
     my ($k,$v)   =split(/=/,$p);
  #print "$k ---> $v\n"; 
     $data{$k}=$v;
   } 


 }
print Dumper \%data;
