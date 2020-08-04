#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long qw(GetOptions);
use Data::Dumper;
print "\n\n";


my $pre_color_selection;
GetOptions ("color=s" => \$pre_color_selection) or die "Usage $0 [--color COLOR]\n";




#-----------Reading file and strong in hash array named "%color_hash"--------------#
my %color_hash;
my $filename ='cocor.txt';
open (my $fh ,'<',$filename) or die "Could not open the '$filename'.$!\n";
while (my $line = <$fh>){
      chomp $line;
  my ($k,$v)   = split(/ /,$line);
      chomp $k;chomp $v;
  $color_hash{$k}=$v;
}


#----------------------Association of letter for a unique number------------------
#print Dumper \%color_hash;                             #Just printing of array;
print "Choose color by giving correspoding letter\n";
  foreach my $x(keys %color_hash){
  print "$x -----> $color_hash{$x}\n";
  } 
 
    #-----------------------#
    my %rhash = reverse (%color_hash);                     #reversing has
    #print Dumper \%rhash;
    print "\n------------------------\n";
#------------------------------------------------------------

my $input;
my $z;
print "Enter the value to select the key\n";
my $input = <STDIN>;
chomp $input;
   foreach my $y(keys %rhash){ 
      if ($y eq $input){
       $z=$y;
       
    } 
}
 

if (not defined $z){
print "Bad selection\n";
} else {
print "The selected color is $rhash{$z}\n";
}



