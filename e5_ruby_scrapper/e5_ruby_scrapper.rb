require 'open-uri'
require 'nokogiri'
load 'scrapper.rb'
puts "Digite aqui la url:"
ruby_scrapper(gets().chomp, true)