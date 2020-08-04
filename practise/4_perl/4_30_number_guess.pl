#!/usr/bin/perl

use strict;
use warnings;

#-----------------------------------------------------------------------------------------

while(1){
my $number = 200;
my $debug =0;
my $random_number = int rand(200) ;
print "$random_number\n";
print "\n 'x'--> exit ; 's'-->Show Hidden Number  ; 'n-->Start New Game  ;";
print "\n *********NEW GAME*********  \n";

     while(1){
           print "\nEnter your guess 0---->200\n";
           if ($debug) {
              print "The hidden number by pressing dddddddddd is $random_number \n";
              }

           my $guess = <STDIN>;
           chomp $guess;
     
             if ($guess eq 'x'){
             exit;
             }
             
             if ($guess eq 's'){
             print "The hidden value is by pressing ssssssssssss $random_number\n";
             next;
             }
             if ( $guess eq 'n'){
                print "You skipped and start new game \n";
                last;     
             }
             if ( $guess eq 'd'){
                $debug = $debug ? 0 : 1;
                next;             
                }

             if ($guess == $random_number)
           	{
           	print "You are absolutely right\n";
             last;
           	}
           
           
             if ($guess < $random_number )
           	{
           	print "This number is too less \n";
           	}
           
            if ($guess < $random_number )
           	{
           	print "The number is far above \n";
           	}
     
     }
}
