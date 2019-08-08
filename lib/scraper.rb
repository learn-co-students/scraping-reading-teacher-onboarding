require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
headline = doc.css(".title-3Kf9MY")

puts headline


headline.each do |child|
  puts child.text
end

