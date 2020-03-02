# LFI-Box
LFI-Box is a Vulnerable lab developed and maintained by Touhid Shaikh.
LFI stands for Local File Inclusion. LFI is a type of web-application security vulnerability. LFI is only one of many web-application security vulnerabilities

#To Pull Image on your system ->
docker pull ronit0x0/lfi-box

#To Run Container directly without Pulling ->
docker run -p 80:80 --name FIBox ronit0x0/lfi-box

Then open your Browser and navigate to http://localhost/FIBox

==========================================================

Parameter: ?page=

Example- Basic LFI: http://localhost/FIBox/lfi-basic.php?page=private/test.php
