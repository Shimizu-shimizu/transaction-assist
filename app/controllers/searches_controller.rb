class SearchesController < ApplicationController
  def new    
  end
  
  def create
    @inquiry = Inquiry.create(inquiry_params)
    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver
    end
  end
  
  private
  def inquiry_params
    params.permit(:name, :mail, :message)
  end
end
