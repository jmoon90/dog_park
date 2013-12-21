class Ownership < ActiveRecord::Base
  belongs_to :owner,
    inverse_of: :ownerships

  belongs_to :dog,
    inverse_of: :ownerships

  validates_presence_of :dog
  validates_presence_of :owner
end

