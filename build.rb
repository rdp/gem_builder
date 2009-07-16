require 'rubygems'

if !File.exist?(ARGV[0])
  puts 'syntax: xxx.gemspec'
  exit 1
end
Gem::Builder.new(eval(File.read(ARGV[0]))).build
