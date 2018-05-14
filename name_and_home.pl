use strict;
use DBI;

my $dbh = DBI->connect('dbi:SQLite:dbname=perldb')
	or die "Couldn't connect to database: " . DBI->errstr;

my $sth = $dbh->prepare('SELECT * FROM name_and_home')
	or die "Couldn't prepare statement: " . $dbh->errstr;

my $headers = $sth->{NAME};

my ($FirstName, $LastName, $Home) = @$headers;
print $FirstName . " | ", $LastName . " | ", $Home;
print "\n", "---------------------------";


$sth->execute();

my $row;


while($row = $sth->fetchrow_hashref()) {
	print "\n", $row->{FirstName} . " | ", $row->{LastName} . " | ", $row->{Home};
}

$sth->finish();
$dbh->disconnect();
