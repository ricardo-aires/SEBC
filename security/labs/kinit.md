# Integrating Kerberos with Cloudera Manager

```code
$ kinit cloudera-scm
Password for cloudera-scm@SEBC.COM: 
$ kadmin -p cloudera-scm
Authenticating as principal cloudera-scm with password.
Password for cloudera-scm@SEBC.COM: 
kadmin:  addprinc ricardo-aires@SEBC.COM
WARNING: no policy specified for ricardo-aires@SEBC.COM; defaulting to no policy
Enter password for principal "ricardo-aires@SEBC.COM": 
Re-enter password for principal "ricardo-aires@SEBC.COM": 
Principal "ricardo-aires@SEBC.COM" created.
kadmin:  exit
$ kinit ricardo-aires@SEBC.COM
Password for ricardo-aires@SEBC.COM: 
$ klist
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: ricardo-aires@SEBC.COM

Valid starting     Expires            Service principal
03/09/17 08:14:21  03/10/17 08:14:21  krbtgt/SEBC.COM@SEBC.COM
	renew until 03/16/17 08:14:21
$
```