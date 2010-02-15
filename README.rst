zafu - a CouchDB CLI Administration Console
===========================================

zafu is a Cisco-Like CLI on a Nix system for the 
`CouchDB <http://couchdb.apache.org>`_ database. 

.. contents::

News
----
* 2010-02-14 : **Version 0.1.0**. Initial release.
	
Installation Steps
------------------

1.Download the initial release `zafu-0.1.0.tar.gz <http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz>`_::
  
  $ wget http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz

2.Untar and issue the following command inside the zafu directory::
  
  $ ./configure --program-transform-name="s/clish/zafu/"

3.Compile and install::

  $ make && sudo make install

4.Copy the zafu-0.1.0/zafu/ folder to the following path::

  $ cp -fr zafu /usr/local/etc/zafu

5.or you may skip 4 and just set the ZAFU_PATH environment variable and point to zafu folder which can be found under the zafu-0.1.0/ root directory::
  $ this may vary depending on the type of shell you're using. 

6.Issue the zafu command to launch the "zafu" shell::

  $ zafu

Background
----------

The modular framework used for implementing Cisco-Like CLI administration 
for zafu is based from `CLISH <http://clish.sourceforge.net/>`_ project.

Features
--------
* zafu
  - provides a very simple CLI interface to the CouchDB database
  - command auto-completion and syntax checking
  - takes care of the long/tedious cURL commands
* CLI
  - for a more in-depth CLI features have a look at `CLISH <http://clish.sourceforge.net/>`_ "Key Design Points"

Todo
----
* more CouchDB CLI features (of course, who doesn't want ?)
* Better documentation 
* friendly installation process
* platform packages
* as a community project this will evolve over the time

License
-------
* BSD License

Authors
-------
* Richard Sentino <richard.sentino@gmail.com> - zafu implementation
* See LICENSE file to see all the authors of the CLISH project
