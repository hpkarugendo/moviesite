require 'test_helper'

class BlogmailerTest < ActionMailer::TestCase
  def mailto_sample
  Blogmailer.mail-to(Customer.first)
  end

end
