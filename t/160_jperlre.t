# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use Char::OldUTF8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ い' =~ /(あ\sい)/) {
    if ("-" eq "-") {
        print "ok - 1 $^X $__FILE__ ('あ い' =~ /あ\\sい/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あ い' =~ /あ\\sい/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ い' =~ /あ\\sい/).\n";
}

__END__
