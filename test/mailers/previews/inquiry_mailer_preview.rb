# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview
  def inquiry
    inquiry = Inquiry.new(name:"顧客名", message:"問い合わせ内容")
    
    InquiryMailer.send_mail(inquiry)
  end
end
