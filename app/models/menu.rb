class Menu < ActiveRecord::Base
  has_many :sections
  has_many :items, :through => :sections
  
  validates :name, :presence => true,
                   :uniqueness => {:message => "with that name already created"}
end
