require "betaseries/api/version"

module Betaseries
  module Api
    def self.parser_with_one_param(url, param)
      require 'open-uri'
      require 'rubygems'
      require 'json'

      url = url + param.to_s

      response = open(url).read
      parsed = JSON.parse(response)
    end

    def self.search(name)
      url = 'https://api.betaseries.com/shows/search?key=fe5bb799c085&v=2.4&title='

      parsed = parser_with_one_param(url, name)

      parsed["shows"].first
    end

    def self.episodes(show_id)
      url = 'https://api.betaseries.com/shows/episodes?key=fe5bb799c085&v=2.4&id='

      parser_with_one_param(url, show_id)
    end
  end
end
