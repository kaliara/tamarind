class Subscriber < ActiveRecord::Base
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => {:message => "already is subscribed"},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "is not correctly formatted"}
  
  MAILCHIMP_LIST_ID = "99cd4f5fb9"
  MAILCHIMP_API_KEY = "5836f9cb2a97377f69220517159b73ee-us2"
  
  after_create :add_to_mailchimp_list
  
  def add_to_mailchimp_list
    h = Hominid::API.new(MAILCHIMP_API_KEY)
    h.list_subscribe(MAILCHIMP_LIST_ID, self.email, {'FNAME' => '', 'LNAME' => ''}, 'html', false, true, true, false)
  end
end
