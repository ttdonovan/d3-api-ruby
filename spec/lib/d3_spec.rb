require 'spec_helper'
require_relative '../../lib/d3'

describe D3 do
  it { should be_a_kind_of(Module) }

  describe "API" do
    subject { described_class::API }

    it { should be_a_kind_of(Module) }
  end
end