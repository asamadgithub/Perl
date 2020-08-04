#!/usr/bin/perl
use strict;
use warnings;


my $filename = shift or die "Usage: 'file_ist_missing'";
open (my $fh ,'<',$filename) or die "Could not open the '$filename'.$0";


my @file_array;


while (my $line=<$fh>){
chomp $line;
  my @line_array= split (/[.]/,$line);
    push (@file_array, \@line_array);
}

##! Sorting Mechanism ------

		my @sorted_array;
				@sorted_array= sort { 
					${$a}[0]  <=>   ${$b}[0]||
					${$a}[1]  <=>   ${$b}[1]||
					${$a}[2]  <=>   ${$b}[2]||
					${$a}[3]  <=>   ${$b}[3]||
					${$a}[4]  <=>   ${$b}[4]
					}@file_array;        


##! -------------------------------------------------------------------------------------------------------
#          ++++++++++++++++++		Printing Section		++++++++++++++++++
##! ------------------------------------------------------------------------------------------------------- 
 print "\n\n";
 #print "@file_array";
 print "\n\t     ********Complete Printing of file********  \n";
 
 foreach my $i(0..$#file_array){
    my $l_th=scalar @{$file_array[$i]};
     foreach my $j(0..$l_th-1){
        print "\t$file_array[$i][$j]\t";
             }
         print "\n";
          }
##! -------------------------------------------------------------------------------------------------------
print "\n\t     ************Sorting  of file**e**********  \n";
foreach my $i(0..$#sorted_array){
    my $l_th=scalar @{$sorted_array[$i]}; 
    foreach my $j(0..$l_th-1){
        print "\t$sorted_array[$i][$j]\t";
             }
         print "\n";
          }
       
##----------------------
##----------------------
my $ref=\@file_array;
pass_reference ($ref);


sub pass_reference {
my $ref=shift;
my $x=  scalar @{$ref}[0];

print "====$x=====\n";
#print "---{$ref[0]}---\n";
}





     
