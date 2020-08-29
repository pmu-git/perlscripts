use strict;
use warnings;
use diagnostics;
################################################
#If you are using Strawberry Perl, 	       #
#the following modules will be pre installed.  #
################################################
use Email::Simple;
use Email::Sender::Simple;
use Email::Simple::Creator;
################################################
#Following modules WILL NOT BE preinstalled.   #
#Strawberry Perl or not, you'll have to        #
#manually install these modules.	       #
#command to install modules:		       #
#C:\Users\you> cpanm Config::Tiny	       #
################################################
use Email::Sender::Transport::SMTP::TLS;
use Config::Tiny;

my $email_info = Config::Tiny->new;
$email_info = Config::Tiny->read('email_info.conf');

use Cwd 'abs_path';
my $abs_path = abs_path($0);
my $new_email = Email::Simple->create(
	header => [
		To	=> $email_info->{params}->{To}, 
		From	=> $email_info->{params}->{From},
		Subject	=> 'Test Message.',
	],
	body => "This is a simple test Message sent using my script.\
		 \nScript Location: $abs_path\
		 \nServer name: $ENV{'COMPUTERNAME'}\n",
);
################################################
#Keep this line as a test.
#print $new_email->as_string;
################################################
my $transport = Email::Sender::Transport::SMTP::TLS->new({
	host	=>  $email_info->{params}->{host},
	port	=> $email_info->{params}->{port},
	username => $email_info->{params}->{username},
	password => $email_info->{params}->{password},
	
});
Email::Sender::Simple->send($new_email, {transport => $transport});
