class Menu < ActiveRecord::Base
  has_many :sections
  has_many :items, :through => :sections
end
