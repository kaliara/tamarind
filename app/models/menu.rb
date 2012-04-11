class Menu < ActiveRecord::Base
  has_many :sections
  has_many :items, :through => :sections
  
  validates :name, :presence => true,
                   :uniqueness => {:message => "with that name already created"}
                   
  scope :viewable, where('viewable = ?', 1).order('position asc')
  
  def slug
    name.parameterize
  end
  
  def self.find_by_slug(arg)
    Menu.all.select{|m| m.slug == arg}.first
  end
end
