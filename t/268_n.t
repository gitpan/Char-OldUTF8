# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use strict;
use Char::OldUTF8;
print "1..4\n";

my $__FILE__ = __FILE__;

$_ = "あ\nかきくけこ";

if (/(\N{3})/ and ("<$1>" eq "<かきく>")) {
    print qq{ok - 1 $^X $__FILE__ ($1)\n};
}
else {
    print qq{not ok - 1 $^X $__FILE__ ($1)\n};
}

if (/(\N{3,5})/ and ("<$1>" eq "<かきくけこ>")) {
    print qq{ok - 2 $^X $__FILE__ ($1)\n};
}
else {
    print qq{not ok - 2 $^X $__FILE__ ($1)\n};
}

$_ = "あ\nかき\nくけこ";

if (/(\N{3,})/ and ("<$1>" eq "<くけこ>")) {
    print qq{ok - 3 $^X $__FILE__ ($1)\n};
}
else {
    print qq{not ok - 3 $^X $__FILE__ ($1)\n};
}

$_ = "\n\n\nかき\nくけこ";

if (/(\N+)/ and ("<$1>" eq "<かき>")) {
    print qq{ok - 4 $^X $__FILE__ ($1)\n};
}
else {
    print qq{not ok - 4 $^X $__FILE__ ($1)\n};
}

__END__
