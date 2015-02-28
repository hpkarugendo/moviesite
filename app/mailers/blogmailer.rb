class Blogmailer < ActionMailer::Base
  default from: "yurinoou@gmail.com"

 def email_to(customer)
    @customer = customer
    mail(to: @customer.email, subject: 'Welcome to the Avengers Fansite', body: 'Thank you for joining the Avengers Fan Site')
  end
end
