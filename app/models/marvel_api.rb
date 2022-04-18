require "rubygems"
require "httparty"
require "dotenv-rails"
require "digest"
class MarvelApi < ApplicationRecord
  include HTTParty
  base_uri "http://gateway.marvel.com"
  def timestamp
    Time.now.to_s
  end

  def hash
    Digest::MD5.hexdigest("#{timestamp}#{ENV["MARVEL_private_key"]}#{ENV["MARVEL_public_key"]}")
  end

  def posts
    self.class.get("/v1/public/characters?ts=#{Time.now.to_s}&apikey=#{ENV["MARVEL_public_key"]}&hash=#{hash}")
  end
end
