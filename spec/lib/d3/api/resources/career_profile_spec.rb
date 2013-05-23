require_relative '../../../../../lib/d3/api/resources/career_profile'

describe D3::API::Resources::CareerProfile do
  let(:battletag) { stub(name: 'ttdonovan', code: '1187') }
  let(:profile_uri) { 'profile/ttdonovan-1187/' }

  subject { described_class.new(battletag) }

  it { should be_kind_of(D3::API::Resources::Base) }

  its(:uri_path) { should eq(profile_uri) }
end