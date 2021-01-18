#!/usr/bin/perl 
use strict;
use warnings;
use Term::ANSIColor;
use Getopt::Long;

system('clear');
print color "BRIGHT_GREEN";
print "\n[---]                S0x4 - Same Site Scripting Scanner            [---]\n";
print "[---]    Written by: Mustafa - Twitter: twitter.com/c0brabaghdad1  [---]\n";

my $options = GetOptions(
  'h=s' => \my $host,
  'l=s'   => \my $list, 
) or die "Invalid options passed to $0\n";
chomp $host;

if(defined($host) and defined($list)){print "\n\n";
if(open(LIST,'<', $list)or die $!){
	while(my $custom_wordlist = <LIST>){
		chomp $custom_wordlist;
			my $full_host =$custom_wordlist .".". $host;
            my $output = `host $full_host`;
            print color "CYAN";
            print $output;
            print color "RED";            
	        print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n";
	}	
}
}
if(!defined($host) or !defined($list)){
	print color "YELLOW";
	print "Usage: :  /s0x4.pl -h target.tld -l wordlist.txt\n";
    exit 1;}