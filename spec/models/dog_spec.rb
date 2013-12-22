require 'spec_helper'

describe Dog do
  let(:dog) { FactoryGirl.create(:dog) }

  it "has a name" do
    expect(dog[:name]).to eq("cudi")
  end

  it { should have_valid(:name).when('cudi', 'brownie') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_many :owners }
  it { should have_many(:owners).through(:ownerships) }
end
