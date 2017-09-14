class SushiRoll < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :price

  def sort_by_price
  	# look at ruby dock .sort_by
  	
  end

  def roll_description
  	
  end

end
