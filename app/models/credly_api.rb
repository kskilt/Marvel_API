require "rubygems"
require "dotenv-rails"
require "faraday"
class CredlyApi < ApplicationRecord
  def self.get_badges
    conn = Faraday.new(ENV["Credly_url"], headers: {'Content-Type' => 'application/json'})
    conn.basic_auth(ENV["Credly_token"],ENV["Credly_secret_token"])
    conn.get(ENV["Credly_get"])
  end

  def self.post_badges
    conn = Faraday.new(ENV["Credly_url"], headers: {'Content-Type' => 'application/json'})
    conn.basic_auth(ENV["Credly_token"],ENV["Credly_secret_token"])
    conn.post ENV['Credley_post'] do |req|
      req.body = JSON.generate(
        "recipient_email": "kskilt@hotmail.com",
        "issued_to_first_name": "kevin",
        "issued_to_last_name": "skilton",
        "badge_template_id": "38e3496e-f534-415c-9e74-2fb3ebc43fd9",
        "issued_at": Time.now.to_s
    )
    end
  end

end
