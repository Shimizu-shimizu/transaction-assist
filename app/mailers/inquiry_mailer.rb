class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      form: 'kokyaku@example.com',
      to: 'shosya@example.com',
      cc: 'cc@example.com',
      bcc: 'bcc@example.com',
      subject: '問い合わせ件名'
      )
  end
end
