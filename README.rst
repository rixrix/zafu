zafu - a CouchDB CLI Administration Console
===========================================

zafu is a Cisco-Like CLI on a Nix system for the 
`CouchDB <http://couchdb.apache.org>`_ database.

.. contents::

News
----

 * 2010-02-14 : **Version 0.1.0**. Initial release.
	
Installation
------------

Download the initial release `zafu-0.1.0.tar.gz <http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz>`_::
  
  $ wget http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz

Untar and issue the following command inside the zafu directory::
  
  $ ./configure --program-transform-name="s/clish/zafu/"

Compile and install::

  $ make && sudo make install

Copy the zafu-0.1.0/zafu/ folder to the following path::

  $ cp -fr zafu /usr/local/etc/zafu

Issue the zafu command to launch the "zafu" shell::

  $ zafu

Background
----------

The modular framework used for implementing Cisco-Like CLI administration 
for zafu is based from `CLISH <http://clish.sourceforge.net/>`_ project.

Features
--------

 * CLI

   - for a more in-depth CLI features have a look at `CLISH <http://clish.sourceforge.net/>`_ "Key Design Points"

 * zafu

   - TBA

Todo
----

 * Better documentation ;)

License
-------

 * BSD License

Authors
-------

 * Richard Sentino <richard.sentino@gmail.com> - zafu implementation
 * See LICENSE file to see all the authors of the CLISH project
