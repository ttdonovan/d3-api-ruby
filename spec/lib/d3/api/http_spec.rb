require_relative '../../../../lib/d3/api/http'

describe D3::API::HTTP do
  subject { described_class.new('example.com') }

  its(:host) { should eq('example.com') }
  its(:url) { should eq('http://example.com') }

  describe "request" do
    let(:conn) { stub(get: stub(body: "{}")) }

    it "makes a GET request to the 'api/d3/path/to/resource' and returns a parsed JSON response" do
      subject.should_receive(:connection).and_return(conn)
      expect(subject.request('path/to/resource')).to eq({})
    end
  end

  describe "connection" do
    subject { described_class.new('example.com').connection }

    it { should be_kind_of(Faraday::Connection) }
    its("URL") { expect(subject.url_prefix.to_s).to eq('http://example.com/') }
  end
end