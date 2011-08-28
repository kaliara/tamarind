class DevelopmentMailInterceptor
  def self.delivering_email(message)  
    message.subject = "#{message.subject} ::: originally for [#{message.to}]"  
    message.to = "admin@tamarindoflondon.com"
  end
end