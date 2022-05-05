use strict;
use warnings;
use POSIX;
use Filesys::SmbClient;

my $smb = new Filesys::SmbClient(
    username  => "Administrator",
    password  => 'IYbhbgaA7bj-M8VW?XqnSOLw2v58-)cQ',
    workgroup => ".",
    debug => 0
);
my $fd = $smb->opendir("smb://10.25.6.117/test");
if (!defined($fd)) {
  print "===error: $!===\n";
  exit(1);
}
while (my $f = $smb->readdir_struct($fd)) {
  use Data::Dumper; print Data::Dumper::Dumper($f);

  if ($f->[0] == SMBC_DIR) {print "Directory ",$f->[1],"\n";}
  elsif ($f->[0] == SMBC_FILE) {print "File ",$f->[1],"\n";}
}
$smb->close($fd);

exit(0);
