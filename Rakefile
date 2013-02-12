# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "gmail-to-dropbox"
  gem.homepage = "http://github.com/RONGHAI/gmail-to-dropbox"
  gem.license = "MIT"
  gem.summary = %Q{sync gmail/Dropbox unread emails' attachements to dropbox}
  gem.description = %Q{sync all attachments of gmail/Dropbox unread emails to dropbox}
  gem.email = "ronghai.wei@msn.com"
  gem.authors = ["RONGHAI"]
  gem.post_install_message = ""
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

#require 'rcov/rcovtask'
#Rcov::RcovTask.new do |test|
#  test.libs << 'test'
#  test.pattern = 'test/**/test_*.rb'
#  test.verbose = true
#  test.rcov_opts << '--exclude "gems/*"'
#end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "l5m-tools #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end