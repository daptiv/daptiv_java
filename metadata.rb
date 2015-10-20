name             'daptiv_java'
maintainer       'Daptiv Solutions, LLC'
maintainer_email 'dl_teamengineering@daptiv.com'
license          'All rights reserved'
description      ''
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version ((IO.read(ver_path) if File.exists?(ver_path)) || '1.0.0').chomp
supports         'ubuntu'
supports         'windows'
depends          'apt'
depends          'java'
depends          'windows'
