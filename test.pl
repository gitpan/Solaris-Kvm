# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 1 };
use Solaris::Kvm;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

$x = new Solaris::Kvm();
print $x, "\n";
#foreach(keys %{$x}) {
#   print "$_ => $x->{$_}\n";
#}
printf "maxusers: %d %d %d %d %d\n",
   $x->maxusers, $x->size('maxusers'),
   $x->type('maxusers'), $x->bind('maxusers'),
   $x->visibility('maxusers');
print "STT_COMMON: ", STT_COMMON, "\n";
