require 'spec_helper'

describe Owner do
  it { should have_valid(:first_name).when('john', 'pau') }
  it { should_not have_valid(:first_name).when('', nil) }

  it { should have_valid(:last_name).when('moon', 'gasol') }
  it { should_not have_valid(:last_name).when('', nil) }

  it { should have_valid(:email_address).when('john@gmail.com, paul@yahoo.com') }
  it { should_not have_valid(:email_address).when('', nil) }

  it { should have_many :dogs }
  it { should have_many(:dogs).through(:ownerships) }
end

