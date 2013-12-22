require 'spec_helper'

describe Ownership do
  let(:ownership) { FactoryGirl.create(:ownership) }

  it "has many dogs and owners" do
    expect(ownership.owner[:first_name]).to eq('kevin')
    expect(ownership.owner_id).to be_a(Fixnum)
    expect(ownership.dog[:name]).to eq('cudi')
    expect(ownership.dog_id).to be_a(Fixnum)
  end

  it { should belong_to :owner }
  it { should belong_to :dog }

  it { should have_valid(:owner_id).when(Owner.new) }
  it { should have_valid(:dog_id).when(Dog.new) }
end
