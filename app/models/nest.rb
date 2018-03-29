class Nest < ActiveRecord::Base
  belongs_to :bird

  validates_presence_of :location, :fabrication
  validates :fabrication, inclusion: { in: %w(mud straw),
    message: "%{value} is not a valid material for nestmaking" }
end
