# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gmail-to-dropbox"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["RONGHAI"]
  s.date = "2014-08-09"
  s.description = "sync all attachments of gmail/Dropbox unread emails to dropbox"
  s.email = "ronghai.wei@msn.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "gmail-to-dropbox.gemspec",
    "lib/gmail-to-dropbox.rb",
    "test/helper.rb",
    "test/test_gmail-to-dropbox.rb"
  ]
  s.homepage = "http://github.com/RONGHAI/gmail-to-dropbox"
  s.licenses = ["MIT"]
  s.post_install_message = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "sync gmail/Dropbox unread emails' attachements to dropbox"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-gmail>, [">= 0.3.0"])
      s.add_runtime_dependency(%q<dropbox-sdk>, [">= 1.5.1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<ruby-gmail>, [">= 0.3.0"])
      s.add_dependency(%q<dropbox-sdk>, [">= 1.5.1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<ruby-gmail>, [">= 0.3.0"])
    s.add_dependency(%q<dropbox-sdk>, [">= 1.5.1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.2.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

