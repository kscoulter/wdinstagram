require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"

Entry.create(author: "Kim Kardashian", photo_url: "https://metrouk2.files.wordpress.com/2014/11/ad151550226kim-kardashian-c-e1415786271997.jpg", date_taken: "5/12/2014")
Entry.create(author: "Mr. Whiskers", photo_url: "http://www.savethecat.com/wp-content/uploads/2015/06/cats.jpg", date_taken: "6/7/2015")
Entry.create(author: "Mr. Whiskers", photo_url: "https://upload.wikimedia.org/wikipedia/commons/1/1e/Large_Siamese_cat_tosses_a_mouse.jpg", date_taken: "")
Entry.create(author: "Kanye West", photo_url: "http://towleroad.typepad.com/.a/6a00d8341c730253ef0120a5c7d330970c-pi", date_taken: "2/13/2009")
