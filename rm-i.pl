#!/usr/bin/env perl
use strict;
use warnings;

my @file = @ARGV;
my @opt = shift @file if $file[0] =~ /^-/;
#print "opt: @opt\n";

system "ls", "-dF", @file;

print "remove? ";
<STDIN> =~ /^y$/i or exit;

exec "rm", @opt, @file;
