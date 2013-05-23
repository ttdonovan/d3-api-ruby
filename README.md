# D3API.rb

D3API.rb is Ruby library for the Diablo 3 API resources that are in the
Blizzard Community Platform.

More information to come at a later date.

## Usage

    $ irb -Ilib -rd3
    > battletag = D3::API::BattleTag.new('ttdonovan', '1187')
    > api_profile = D3::API::Resources::CareerProfile.new(battletag)
    > api_profile.response_payload
    # => a Ruby Hash of JSON response

## Development

    $ bundle
    $ COVERAGE=true rake spec
    $ guard
