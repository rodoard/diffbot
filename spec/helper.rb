require 'rubygems'
require 'fakeweb'
require 'diffbot'
require 'rspec'

DEV_TOKEN="diffbotcomtestdrive"

XCONOMY_POST_JSON = "xconomy_post.json"

def path(filename)
  File.join(File.dirname(__FILE__), 'data', filename)
end

def file(path)
  File.read path
end

def data(filename)
  file path(filename)
end