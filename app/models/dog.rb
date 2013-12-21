class Dog < ActiveRecord::Base
  validates_presence_of :name

  has_many :ownerships,
    inverse_of: :dog
  has_many :owners,
    through: :ownerships,
    inverse_of: :dogs
end
