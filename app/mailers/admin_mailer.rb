class AdminMailer < ActionMailer::Base
  default :host => "tamarindoflondon.com"
  
  def new_applicant(applicant)
    @applicant = applicant
    mail(:to => "maneesh@tamarindoflondon.com", :from => "website@tamarindoflondon.com", :subject => "WEBSITE :: New Applicant [#{applicant.name}]")
  end
end
