# perl_dbi

<h2>Getting Started</h2> 

To run this project you must have Perl 5, version 18, subversion 2 (v5.18.2). If you have MacOS X, Perl is already installed. 

This link will provide you with the documentation to install Perl, in case that you do not have it installed on your local machine. 

Install Perl: https://learn.perl.org/installing/windows.html

To check and see if you have Perl installed on your local machine and to see which version is installed run:

```
perl -v
```

Once Perl is installed, you must clone this repo and save it to your local machine. Then within the terminal: 

```
cd [into folder you saved the clone of this repo]
```

Then run the perl script file.
```
perl name_and_home.pl
```

The Perl DBI script will connect to the database via the Perl DBI Module. It will then output the data back to the console, with each value separated with
a pipe. The first three values are the headers of the name_and_home table. With the data values below corresponding to each header. 

FirstName | LastName | Home

