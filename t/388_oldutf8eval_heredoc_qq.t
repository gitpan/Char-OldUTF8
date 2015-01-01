# This file is encoded in old UTF-8.
die "This file is not encoded in old UTF-8.\n" if q{あ} ne "\xe3\x81\x82";

use Char::OldUTF8;

print "1..12\n";

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval "..."
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval " if ('□●' !~ /[◆]/) { return 1 } else { return 0 } "
END
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval qq{...}
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval qq{ if ('□●' !~ /[◆]/) { return 1 } else { return 0 } }
END
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval '...'
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval ' if (qq{□●} !~ /[◆]/) { return 1 } else { return 0 } '
END
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval q{...}
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval q{ if ('□●' !~ /[◆]/) { return 1 } else { return 0 } }
END
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval $var
my $var = q{q{ if ('□●' !~ /[◆]/) { return 1 } else { return 0 } }};
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval $var
END
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval (omit)
$_ = "if ('□●' !~ /[◆]/) { return 1 } else { return 0 }";
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval
END
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has Char::OldUTF8::eval {...}
if (Char::OldUTF8::eval <<"END") {
Char::OldUTF8::eval { if ('□●' !~ /[◆]/) { return 1 } else { return 0 } }
END
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has "..."
if (Char::OldUTF8::eval <<"END") {
if ('□●' !~ /[◆]/) { return \"1\" } else { return \"0\" }
END
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has qq{...}
if (Char::OldUTF8::eval <<"END") {
if ('□●' !~ /[◆]/) { return qq{1} } else { return qq{0} }
END
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has '...'
if (Char::OldUTF8::eval <<"END") {
if ('□●' !~ /[◆]/) { return '1' } else { return '0' }
END
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has q{...}
if (Char::OldUTF8::eval <<"END") {
if ('□●' !~ /[◆]/) { return q{1} } else { return q{0} }
END
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::OldUTF8::eval <<"END" has $var
my $var1 = 1;
my $var0 = 0;
if (Char::OldUTF8::eval <<"END") {
if ('□●' !~ /[◆]/) { return $var1 } else { return $var0 }
END
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
