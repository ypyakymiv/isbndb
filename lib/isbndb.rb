require "isbndb/version"
require "httparty"

module Isbndb
  # Your code goes here...
  def self.check_status(response)
    if(response.code != 200)
      raise 'Request error'
    end
  end

  def self.find_by_isbn(isbn)
    headers = {
      "Accept": "application/json",
      "X-API-KEY": get_api_key
    }
    response = HTTParty::get("https://api.isbndb.com/book/#{isbn}", headers: headers)
    check_status(response)

    response.parsed_response
  end

  def self.get_api_key
    ENV["ISBNDB_KEY"]
  end
end
