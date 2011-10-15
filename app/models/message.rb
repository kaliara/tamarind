class Message < ActiveRecord::Base
  after_create :send_message
  
  SUBJECTS = [["A question about Tamarind of London", 0], ["Feedback about Tamarind of London", 1], ["Other...",2]]
  
  def subject
    Message::SUBJECTS[reason.to_i].first
  end
  
  def send_message
    AdminMailer.new_message(self).deliver    
  end
end
