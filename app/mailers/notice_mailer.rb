class NoticeMailer < ApplicationMailer
  default from:'info@cloud-calgary.com'
  
  def send_mail(inquiry, user)
    @inquiry = inquiry
    @user = user
    mail(to: user.email, subject: 'あなたの書き込みについてメーセージが届きました')
  end
end
