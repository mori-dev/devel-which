require "rake"
require "rake/clean"
require "pathname"


task :default do
  sh "rake -T"
end

CLEAN.include "devel-which-*.gem"


namespace :gem do

  desc "build devel-which gem"
  task :build do
    sh "rake clean && gem build devel-which.gemspec"
  end

  desc "run gem install on the built gem"
  task :install => :build do
    sh "gem install devel-which*.gem"
  end

  desc "push devel-which.gem to RubyGems"
  task :release do
    if Pathname.new("~/.gem/credentials").expand_path.exist?
      sh "gem push devel-which*.gem"
    else
      raise "Your rubygems.org credentials aren't set. Run `gem push` to set them."
    end
  end
end
