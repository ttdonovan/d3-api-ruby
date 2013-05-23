require_relative 'base'

module D3
  module API
    module Resources
      class CareerProfile < Base
        # Internal: The URI path to the CareerProfile resource.
        #
        # Returns a String path.
        def uri_path
          "profile/#{battletag_name}-#{battletag_code}/"
        end
      end
    end
  end
end
