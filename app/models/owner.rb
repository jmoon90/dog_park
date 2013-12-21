class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_address

  has_many :ownerships,
    inverse_of: :owner
  has_many :dogs,
    through: :ownerships,
    inverse_of: :owners
end
