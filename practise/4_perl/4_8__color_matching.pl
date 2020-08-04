#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long qw(GetOptions);


my $color;
GetOptions('color=s'=>  \$color)  or die "Usage: $0 [--color COLOR]\n ";



  if (not defined $color) {



             my @colors = ("Red" ,"Green" ,"Yellow" ," White" ,"Blue" ,"Orange");
              print "The colors along with their respective codes are given below\n";
                foreach my $x (1..$#colors+1){
                   chomp ($x);
                     print "$x ---->  $colors[$x-1]\n";
                          }

#--------------------------------------------------------------
#-------------------------------------------------------------
#my $color;
                 print "Enter your code the for the colors\n";  
                 my  $num=<STDIN>;
                 chomp ($num);

                   if( defined $colors[$num-1]) {
                    $color = $colors[$num-1];
                      } else {
                         print "The unidentified selection\n";
                          exit;
                      }

               }  else {
#-----------------------------------------------------------------
#-----------------------------------------------------------------
            my $found;
              my @colors = ("Red" ,"Green" ,"Yellow" ," White" ,"Blue" ,"Orange");
               foreach my $check (@colors){
                 if ($color eq $check){
                     $found=1;
                     }
                }
              if (not $found ) {
              print "bad selection\n";
               exit;
              }
}
print"The select color is $color\n"; 

   
