require 'faraday'
require 'json'

module D3
  module API
    # Internal: A class used to make HTTP connections to the Diablo 3 API.
    # This class is used to retrieve resources that are in the Blizzard
    # Community API for Diablo 3.
    #
    # Examples
    #
    #   D3::API::HTTP.new('us.battle.net')
    #   # => #<D3::API::HTTP:0x007f84028526f8 @host="us.battle.net">
    #
    #   D3::API::HTTP.new('eu.battle.net')
    #   # => #<D3::API::HTTP:0x007f8402a62948 @host="eu.battle.net">
    class HTTP
      # Internal: Gets the String hostname of the HTTP connection.
      attr_reader :host

      # Internal: Initialize a HTTP connection to a battle.net region.
      #
      # host - A String hostname.
      def initialize(host)
        @host = host
      end

      # Internal: Make a request to the Diablo 3 API for the specified path.
      #
      # path - A String representing the path for the URI.
      #
      # Examples
      #
      #   request('profile/ttdonovan-1187/')
      #   # => {"heroes"=>[{"name"=>"Kheldar", "id"=>2314677, "level"=>60, ...
      #
      #   request('profile/ttdonovan-1187/hero/2314677')
      #   # => {"id"=>2314677, "name"=>"Kheldar", "class"=>"barbarian", ...
      #
      # For information about what type of resource paths that are available
      # in the Diablo 3 API see the https://github.com/Blizzard/d3-api-docs.
      #
      # Returns a Hash of the parsed JSON response for the URI.
      def request(path)
        response = connection.get "api/d3/#{path}"
        JSON.parse(response.body)
      end

      # Internal: Faraday HTTP connection.
      #
      # Returns the Faraday::Connection for the url.
      def connection
        @connection || Faraday.new(url: url)
      end

      # Internal: Formats the hostname with the 'http://' protocol.
      #
      # Returns the String URL.
      def url
        "http://#{host}"
      end
    end
  end
end
