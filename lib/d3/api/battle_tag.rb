module D3
  module API
    # Public: A structure to represent a battle.net BattleTag.
    #
    # Examples
    #
    #   battletag = D3::API::BattleTag.new('ttdonovan', '1187')
    #   # => #<struct D3::API::BattleTag name="ttdonovan", code="1187">
    #
    #   battletag.name
    #   # => "ttdonovan"
    #
    #   battletag.code
    #   # => "1187"
    BattleTag = Struct.new(:name, :code)
  end
end
