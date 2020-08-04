#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my %hash;
my $filename = 'apache.log'; 
open (my $fh ,'<',$filename ) or "Coould not open the 'filename'.$0";
while (my $line = <$fh>){
 chomp $line;
 my $length= index($line, " ");
 my $ip = substr ($line , 0, $length);
 $hash{$ip}++; 
}
foreach my $x (keys %hash){
 chomp $x;
 print "$x appear # of time $hash{$x}\n";
 }

