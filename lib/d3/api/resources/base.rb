require_relative '../http'

module D3
  module API
    module Resources
      class Base
        # Internal: Gets for the BattleTag name and code.
        attr_reader :battletag_name, :battletag_code

        # Internal: Gets for the HTTP connection.
        attr_reader :http

        # Public: Initialize a CareerProfile to fetch data on the Diablo 3 API.
        #
        # battletag - A BattleTag composed of a name and code.
        def initialize(battletag)
          # FIXME: need to find a better way to initialize and configure the HTTP connection
          @http = D3::API::HTTP.new('us.battle.net')
          @battletag_name = battletag.name
          @battletag_code = battletag.code
        end

        # Public: Makes an HTTP request to the URI path and returns the payload response.
        #
        # Returns a Hash sturcture of the payload.
        def response_payload
          http.request(uri_path)
        end

        # Internal: The URI path to be implemented by the sub-class.
        #
        # Raises NotImplementedError if the method has not been implemented.
        def uri_path
          raise NotImplementedError
        end
      end
    end
  end
end
