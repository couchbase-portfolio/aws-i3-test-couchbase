# i3 Test

The amazonlinux folder contains a CFT and sh script that will deploy a Couchbase 4.6.3 EE cluster on Amazon Linux of arbitrary size.  It configures Couchbase to use ephemeral storage.

The centos folder is similar, using CentOS instead.  This template only calls node init, not cluster init.  That's because the code we have to knit the cluster together depends on a configured aws cli being present.  That not available on CentOS.  If needed, I can certainly put that together, but it's going to be significantly more work.
