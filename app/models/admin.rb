class Admin < ActiveRecord::Base
  
  def valid_credentials?(password)  
    Digest::MD5.hexdigest(password) == crypted_password
  end
  
  def new_session_id
    self.session = Digest::MD5.hexdigest(Time.now.to_s + self.crypted_password)[0..63] 
    self.save
    self.session
  end
end
