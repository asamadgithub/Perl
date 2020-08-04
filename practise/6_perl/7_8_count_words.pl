#!/usr/bin/perl
use strict;
use warnings;

my @a;
my %b;
my $filename= 'data.txt';
open (my $fh, '<', $filename) or die "Could not open the file '$filename'.$0";

while (my $line = <$fh>){
    chomp $line;
    @a = split (/ /,$line);
    print "@a\n";
       print "\n---------------\n";
      foreach my $x(@a){
        $b{$x}++;
       }



}  
foreach my $x(keys %b){
 print "$x ---> $b{$x}\n";
} 
