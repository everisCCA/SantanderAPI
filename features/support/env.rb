#encoding: utf-8
#!/usr/bin/env ruby

require 'pry-byebug'
require 'rspec'
require 'httparty'

require File.expand_path(File.dirname(__FILE__) + '/../../features/support/utils')

$DATA_URLS = YAML.load_file(File.expand_path(File.dirname(__FILE__) + '/../../config/urls.yml'))
