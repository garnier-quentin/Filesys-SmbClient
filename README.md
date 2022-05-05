# Filesys::SmbClient - Interface for access Samba filesystem with libsmclient.so

Provide interface to access routine defined in libsmbclient.so provided with Samba.
It's a forked version: https://github.com/rwstauner/Filesys-SmbClient

That version is compatible samba4 only.

### MODULE DEPENDENCIES

To install Filesys::SmbClient, you need following perl module:

* ExtUtils-MakeMaker

For the module execution, no need of perl module dependencies.

### DEPENDENCIES

This module also requires these libraries:

* [libsmbclient](https://www.samba.org/) (version 4 or later)

### INSTALLATION

To install dependency on centos 7:

```
# yum install libsmbclient-devel
```

To install Libssh::Session type the following:

```
# perl Makefile.PL
# make
# make install
```

### BUGS/FEATURE REQUESTS

Please report bugs and request features on the github: https://github.com/garnier-quentin/Filesys-SmbClient

All helps are welcomed!
