#!/usr/bin/env perl

use v5.30;
use warnings;
use utf8;

my $debug = 0;

my $content = $ARGV[0];

# filter the hphm from content string.
my @matcheds = $content =~ m/[a-z]{1}[a-z0-9]{5,6}/ig;
say "@matcheds" if ($debug);

# send the hphm to clipboard
foreach my $matched (@matcheds) {
    say $matched if $debug;
    system "echo $matched | xclip -sel clip";
}
