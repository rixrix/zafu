zafu - a CouchDB CLI Administration Console
==========================================================
********************************************************************************
*                                           __                                 *
*                                         / _|                                 *
*                                ______ _| |_ _   _                            *
*                               |_  / _` |  _| | | |                           *
*                                / / (_| | | | |_| |                           *
*                               /___\__,_|_|  \__,_|                           *
*                     zafu - a CouchDB CLI Administration Console              *
*                                      v0.1.0                                  *
********************************************************************************

`zafu <http://github.com/rixrix/zafu>`_ a Cisco-Like CLI on a *Nix system for `CouchDB <http://couchdb.apache.org/>`.

.. contents::

News
----
 * 2010-02-14 : **Version 0.1.0**. Initial release.
	
Installation
------------

Download the initial release `zafu-0.1.0.tar.gz <http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz>`
  
  wget http://github.com/downloads/rixrix/zafu/zafu-0.1.0.tar.gz

Untar and issue the following command inside the zafu directory
  
  ./configure --program-transform-name="s/clish/zafu/"

Compile and install

  make && sudo make install

Copy the zafu-0.1.0/zafu/ folder to the following path

  cp -fr zafu /usr/local/etc/zafu

Issue the zafu to launch the "zafu" shell

  zafu

Background
----------

The modular framework used for implementing Cisco-Like CLI administration 
for zafu is based from `CLISH <http://clish.sourceforge.net/>` project.

Features
--------
 * CLI

   - for a more in-depth CLI features have a look at `CLISH <http://clish.sourceforge.net/>` "Key Design Points"

 * zafu

   - TBA

Todo
----
 * Better documentation ;)

License
-------
 * BSD License

Authors
------
 * Richard Sentino <richard.sentino@gmail.com> - zafu implementation
 * See LICENSE file to see all the authors of the CLISH implementation
