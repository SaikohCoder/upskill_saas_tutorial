class ContactMailer < ActionMailer::Base
  default to: 'saikohcoder@gmail.com'
  
  def contract_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end