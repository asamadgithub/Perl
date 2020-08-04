#!/usr/bin/perl
use strict;
use warnings;

my $inputfile=shift or die "Require: file at the command line.$0";
open(my $fh_IN ,'<',$inputfile) or die "Could not open the '$inputfile'.$!'";

##Global Variables
my @file_array;
my $count0;my $count1;my $count2;my $count3;
my @element_1;my @sorted_element_1;
my @element_2;my @sorted_element_2;
my @element_3;my @sorted_element_3;
#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
while (my $line=<$fh_IN>){chomp $line;  $line=~ s/^\s+//;
     my @line_array=split(/\s+/,$line);
        push(@file_array,\@line_array);
}

## Title of the file
       foreach my $i(0){print "@{$file_array[$i]}\n";}

## Scalling Factor
       foreach my $i(1){print "@{$file_array[$i]}\n";} 

## Supercell dimension
       foreach my $i(2..4){
         foreach my $j(0..2){
           print "  $file_array[$i][$j]  ";
            } print "\n";}
## Species Type and count   
       foreach my $i(5..6){
          foreach my $j(0..$#{$file_array[$i]}){
            print "$file_array[$i][$j] ";
             } print "\n";}

## Selective Dynamics and Direct
      foreach my $i(7){print "@{$file_array[$i]}\n";}
      foreach my $i(8){print "@{$file_array[$i]}\n";}

## Sorting for First element (Si); Substrate
  ## Storing type-1 elements in a separate array, and later sorting via "sort"function
         $count0=9; $count1=$file_array[6][0];
         foreach my $i($count0..$count0+$count1-1){
         my $ii=$i-$count0; chomp $ii; 
                foreach my $j(0..5){
                $element_1[$ii][$j]=$file_array[$i][$j]; 
                #print "$element_1[$ii][$j]  ";   
                }#print "\n";
          }
                                      #---------------------------------------------------------------
                                       ## Sorting Criteria for type-1
				       @sorted_element_1= sort{
				       ${$a}[2]<=>${$b}[2]||${$a}[1]<=>${$b}[1]||${$a}[0]<=>${$b}[0]
				       }@element_1;
             					 ##
              					 foreach my $i(0..$count1-1){
                					 foreach my $j(0..5){
                  					 print "$sorted_element_1[$i][$j]  ";
                	       				 } print "\n";
                                                     }
##------------------------------------------------------------------------------------------------------------------------------------------------
## Sorting of Second element (In); Two In atomic wires ...... 
  ## Sroting of type-2 element in a separate array
       $count2=$file_array[6][1];
       foreach my $i($count0+$count1..$count0+$count1+$count2-1){
       my $ii=$i-$count0-$count1; chomp $ii;  
              foreach my $j(0..5){
              $element_2[$ii][$j]=$file_array[$i][$j];
               #print "$element_2[$ii][$j](In)-->$ii";   
               }#print "\n";
        }
                                       #---------------------------------------------------------------
                                       ## Sorting Criteria for type-2
                                       @sorted_element_2= sort{
                                       ${$a}[1]<=>${$b}[1]||${$a}[0]<=>${$b}[0]
                                       }@element_2;
                                                  ##
                                                  foreach my $i(0..$count2-1){
                                                          foreach my $j(0..5){
                                                          print "$sorted_element_2[$i][$j]  ";
                                                          }print "\n";}


##Sorting of Third element (H); To avoid dangling bons
   ## Sroting of type-3 element in a separate array
   $count3=$file_array[6][2];
   foreach my $i($count0+$count1+$count2..$count0+$count1+$count2+$count3-1){
        my $ii=$i-$count0-$count1-$count2; chomp $ii;
               foreach my $j(0..5){
               $element_3[$ii][$j]=$file_array[$i][$j];
               #print "$element_3[$ii][$j](H)";
               }#print "\n";
        }
                                        #---------------------------------------------------------------
                                        ## Sorting Criteria for type-3
                                        @sorted_element_3= sort{
                                        ${$a}[2]<=>${$b}[2]
                                        }@element_3;
                                                   ##
                                                   foreach my $i(0..$count2-1){
                                                           foreach my $j(0..5){
                                                           print "$sorted_element_3[$i][$j]  ";
                                                              }print "\n";}

