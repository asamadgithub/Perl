#!/usr/bin/perl
use strict;
use warnings;

my $filename=shift or die "Require: file at the command line";
open(my $fh ,'<',$filename) or die "Could not open the '$filename'.$0'";

##! Golbal Variables ((
my @file_array;
my @sorted_array;
my $file_ref1;
my $file_ref2;
##))

while (my $line=<$fh>){
 chomp $line;
 my @line_array=split(/[.]/,$line); push (@file_array,\@line_array);
}

@sorted_array=sort{
    ${$a}[0]  <=> ${$b}[0]||
    ${$a}[1]  <=> ${$b}[1]||
    ${$a}[2]  <=> ${$b}[2]||
    ${$a}[3]  <=> ${$b}[3]||
    ${$a}[4]  <=> ${$b}[4]
}@file_array;


 {
  print "The file content is ---\n";
  $file_ref1=\@file_array;
  #print "\n---$file_ref---\n";                                        ##Reference of file is printed here and then passed to subrutine in the next line
  process_print($file_ref1);
# ---------------------------------------------- 
print "\n--------------------------------------------\n";
print  "---------------------------------------------\n";
#------ ----------------------------------------
  print "The sorted array ist ---\n";
  $file_ref2=\@sorted_array;
  process_print($file_ref2);
 }  






##! Printing subroutne
sub process_print{
 my $collector=shift;                                                ##We can collect the reference with shift command
 #print "\n---$collector---\n";#print "\n---@{$collector}---\n";     ##We can print here to make sure and match with the previous references
 #my $boxes=scalar @{$collector}; chomp $boxes;                      ##Length of 2d array is determined
      foreach my $i(0..$#{$collector}){
         #my $sub_boxes=scalar @{${$collector}[$i]}; chomp $sub_boxes;
            foreach my $j(0..$#{${$collector}[$i]}){
               print "${${$collector}[$i]}[$j]\t"; 
    }
  print "\n";
  }
}




