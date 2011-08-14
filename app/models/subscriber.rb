class Subscriber < ActiveRecord::Base
  validates :email, :format => { :with => /^[\w\d]+$/ }, :presence => true, :message => "was not properly formatted"
  validates :email, :uniqueness => true, :message => "has already subscribed"
end
