name 'daptiv_java'
maintainer 'Changepoint'
maintainer_email 'cpc_sea_teamengineering@changepoint.com'
license 'All rights reserved'
description ''
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version File.exist?(ver_path) ? IO.read(ver_path).chomp : '1.0.0'
chef_version '>= 12.5' if respond_to?(:chef_version)
issues_url 'https://github.com/daptiv/daptiv_java/issues'
source_url 'https://github.com/daptiv/daptiv_java/'
supports 'ubuntu'
supports 'windows'
depends 'apt'
depends 'java'
depends 'windows'
