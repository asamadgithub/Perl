#!/usr/bin/perl
use strict;
use warnings;
use Term::ANSIColor;

my @months= qw(Null January February March April May June July August September October November December);

my $x=2014;  # Starting Year
my $y=2015;  # Ending Year
foreach my $i($x..$y){
  print color("Red"),"\t\t\t\t\tYear:$i\n",color("reset");
    foreach my $j(1..12){
        if ($j=~/\b1\b|3|5|7|8|\b10\b|\b12\b/){
         my $l=31;
             print color("Blue"), "---$months[$j]---\n", color("reset");
             foreach my $k(1..$l){
              print "  $k ";
              }
           }  
      	elsif ($j=~/\b11\b|4|6|9|\b11\b/){
           my $l=30;
            print color("Blue"), "---$months[$j]---\n", color("reset");
              foreach my $k(1..$l){
               print "  $k ";
               }
            }

	elsif ($j=~/\b2\b/ and $i%4==0){
            my $l=29;
            print color("Blue"), "---$months[$j]---\n", color("reset");
               foreach my $k(1..$l){
                print "  $k ";
                }
             }
		else {
                    my $l=28;
                      print color("Blue"), "---$months[$j]---\n", color("reset");
                        foreach my $k(1..$l){
                          print "  $k ";
                       }
                    }
           print "\n";
           } print "\n\n";
        }


