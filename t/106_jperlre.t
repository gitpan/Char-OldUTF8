# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use Char::OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('xあいうy' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('xあいうy' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('xあいうy' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('xあいうy' =~ /あいう/).\n";
}

__END__
