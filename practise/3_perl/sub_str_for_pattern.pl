#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


#Global  Declarations --------------
my $filename = "apache.log";
#--------------------------

open( my $fh ,'<', $filename ) or die "Could not opne the '$filename'.$!";

  my $local=0;
  my $global=0;

      while ( my $row = <$fh> )     {
                                    chomp ($row);
            
                                     my $length_untill_space  = index( $row , " ");
                                     my $ip_adress = substr ( $row , 0 , $length_untill_space);
                                        if ( $ip_adress eq "127.0.0.1" ) {
                                        say "\nthis time its $ip_adress";
                                        $local ++;
                                        } else { 
                                        $global ++;
                                        say "length $length_untill_space";
                                         }
      # say "$row";
        }
 say "Local $local ------- Global  $global\n";
 say "\n done with the counting";
     
