require 'spec_helper'

describe D3 do
  it { should be_a_kind_of(Module) }

  describe "API" do
    subject { described_class::API }

    it { should be_a_kind_of(Module) }
  end
end