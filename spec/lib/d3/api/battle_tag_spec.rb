require_relative '../../../../lib/d3/api/battle_tag'

describe D3::API::BattleTag do
  subject { described_class.new('ttdonovan', '1187') }

  it          { should be_kind_of(Struct) }
  its(:name)  { should eq('ttdonovan') }
  its(:code)  { should eq('1187') }
end