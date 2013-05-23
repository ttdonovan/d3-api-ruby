require_relative '../../../../../lib/d3/api/resources/base'

describe D3::API::Resources::Base do
  let(:battletag) { stub(name: 'ttdonovan', code: '1187') }

  subject { described_class.new(battletag) }

  its(:battletag_name)  { should eq('ttdonovan') }
  its(:battletag_code)  { should eq('1187') }
  its(:http)            { should be_a_kind_of(D3::API::HTTP) }

  describe "uri_path" do
    it "raises a NotImplementedError expection" do
      expect{ subject.uri_path }.to raise_error(NotImplementedError)
    end
  end

  describe "response_payload" do
    let(:profile_uri) { 'path/to/resource' }
    let(:payload) { stub() }

    it "makes a http request for the profile uri" do
      subject.stub(uri_path: profile_uri)
      subject.http.should_receive(:request).with(profile_uri).and_return(payload)
      expect(subject.response_payload).to eq(payload)
    end
  end
end
