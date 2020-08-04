#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $filename = shift or die "Usage: $0 filename";
open (my $fh ,'<', $filename)  or die "Could not open the '$filename'.$0";


my %map;



while (my $line = <$fh>){
chomp $line;
  my ($keys,$val) = split /,/,$line; 
  $map{$keys} = $val;

}

print Dumper \%map;
