# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use Char::OldUTF8;
print "1..8\n";

my $__FILE__ = __FILE__;

if ("\x0A" =~ /\v/) {
    print qq{ok - 1 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 $^X $__FILE__\n};
}

if ("\x0B" =~ /\v/) {
    print qq{ok - 2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 $^X $__FILE__\n};
}

if ("\x0C" =~ /\v/) {
    print qq{ok - 3 $^X $__FILE__\n};
}
else {
    print qq{not ok - 3 $^X $__FILE__\n};
}

if ("\x0D" =~ /\v/) {
    print qq{ok - 4 $^X $__FILE__\n};
}
else {
    print qq{not ok - 4 $^X $__FILE__\n};
}

if ("\x0A" =~ /\V/) {
    print qq{not ok - 5 $^X $__FILE__\n};
}
else {
    print qq{ok - 5 $^X $__FILE__\n};
}

if ("\x0B" =~ /\V/) {
    print qq{not ok - 6 $^X $__FILE__\n};
}
else {
    print qq{ok - 6 $^X $__FILE__\n};
}

if ("\x0C" =~ /\V/) {
    print qq{not ok - 7 $^X $__FILE__\n};
}
else {
    print qq{ok - 7 $^X $__FILE__\n};
}

if ("\x0D" =~ /\V/) {
    print qq{not ok - 8 $^X $__FILE__\n};
}
else {
    print qq{ok - 8 $^X $__FILE__\n};
}

__END__
