require 'spec_helper'

describe Ownership do
  FactoryGirl.create(:ownership)
  it { should belong_to :owner }
  it { should belong_to :dog }

  it { should have_valid(:owner_id).when(Owner.new) }
  it { should have_valid(:dog_id).when(Dog.new) }
end
