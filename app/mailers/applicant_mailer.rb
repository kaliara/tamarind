class ApplicantMailer < ActionMailer::Base
  def application_received(applicant)
    @applicant = applicant
    mail(:to => applicant.email, :from => "admin@tamarindoflondon.com", :subject => "Tamarind of London - Application Received")
  end
end
