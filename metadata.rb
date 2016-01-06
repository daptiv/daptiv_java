name 'daptiv_java'
maintainer 'Daptiv Solutions, LLC'
maintainer_email 'dl_teamengineering@daptiv.com'
license 'All rights reserved'
description ''
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version File.exist?(ver_path) ? IO.read(ver_path).chomp : '1.0.0'
supports 'ubuntu'
supports 'windows'
depends 'apt'
depends 'java'
depends 'windows'
