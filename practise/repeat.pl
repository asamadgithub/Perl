#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my $cc;
my $force;
GetOptions ('color=s' => \$cc,
            'force' => \$force ) or die "Wrong input for $0, [example --color BLACK]\n"; 

my @colors;  #qw(Red Green Yellow Blue Gray Black);
open (my $fh , '<', "color.txt") or die "Could not open the 'color.txt $!";
while ( my $read = <$fh>){
      chomp $read; 
      @colors=(@colors,$read);
      }


if(not defined $cc){
 # print "Please select the color by given value from manu\n@colors\n";
   foreach my $x(1..$#colors){
     chomp $x;
      print "$x/$#colors for ----> $colors[$x-1]\n";
     } 

  #Selection by User"
  my $num;
  print "Please select color by entering the code number given above\n";
  $num=<STDIN>;
  chomp $num;
    if(defined $colors[$num]){
     print "Your selected color is $colors[$num]\n";
     } else {
          print "Out of manu selection\n"
            }
    


           } elsif (not  $force){
                  my $check;
                  foreach my $investigate (@colors) {
                  if ( $cc eq $investigate) {
                  $check=1;
                                            } 
                                            }
                       if ( not defined $check){
                       print "Out of manu selection\n";
                                               } else {
                                               print "The color is $cc\n";
                                               exit;
                                                      }
                          } else {
                            print "The selected color is $cc\n";
                            exit;
                          }



