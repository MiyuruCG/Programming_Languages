

#!/usr/bin/perl

# This will print "Hello, World"
#print "Hello, world\n";

chdir("/") or die "Can't create directory $_";

my @files = grep(-f, <*.*>);
foreach my $file (@files)
{
 print "file = $file\n";
}

