require 'spec_helper'

describe Dog do

  it { should have_valid(:name).when('cudi', 'brownie') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_many :owners }
  it { should have_many(:owners).through(:ownerships) }
end
