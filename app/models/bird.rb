class Bird < ActiveRecord::Base
  has_many :nests

  validates_presence_of :name, :species, :age
  validates_uniqueness_of :name
  #validates :age, :inclusion => { :in => 1..14 }
  #validates_inclusion_of :age, :in => 1..14
  validates :age, numericality: {
      less_than_or_equal_to: 14,
      greater_than_or_equal_to: 1
    }
end
