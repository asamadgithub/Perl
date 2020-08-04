#!/usr/bin/perl
use strict;
use warnings;


my $filename = shift or die "File is required $0";
open (my $fh, '<',$filename) or die "Could not open the '$filename'.$0";


while (my $line = <$fh>){
 chomp $line;
#   print "$line\n";

#  positive_only ($line);

#  pos_neg_mix ($line);

  science_num ($line);
} 


  #------------ Non Negative Integer -------------------------
sub positive_only {
    
    foreach my $x (@_){
    if ($x =~ /^\+?\d+$/){
    print "$x\n";
    }
  }
}



   #------------ +/- Integer -------------------------

 sub pos_neg_mix {
          foreach my $x (@_){
   if ($x =~ /^[\+\-]?\d+$/){
     print "$x\n";
     }
   } 
 } 



   #------------ scientic notation Integer -------------------------

  sub science_num {
           foreach my $x (@_){
    if ($x =~ /^[\+\-]?\d+\.\d+[eE]-?\d+/){
      print "$x\n";
      }
    }
  }
 











