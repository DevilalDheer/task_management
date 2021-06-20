class UserMailer < ActionMailer::Base
  def send_deadline_mail
    to = 'test@test.com'
    mail(:to => to, :subject => "Task not done yet", :from => "default_sender@foo.bar") do |format|
      format.text(:content_type => "text/plain", :charset => "UTF-8", :content_transfer_encoding => "7bit")
    end
  end
end