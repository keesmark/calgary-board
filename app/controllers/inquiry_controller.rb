class InquiryController < ApplicationController
  def index
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    @inquiry = Inquiry.new(params_inquiry)
    if @inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @inquiry = Inquiry.new(params_inquiry)
    NoticeMailer.send_mail(@inquiry).deliver

    render :action => 'thanks'
  end
  
  def classified_index
    @classified = Classified.find(params[:classified_id])
    @inquiry = Inquiry.new
  end
  
  def classified_confirm
    @classified = Classified.find(params[:classified_id])
    @inquiry = Inquiry.new(params_inquiry)
    if @inquiry.valid?
      render :action => 'classified_confirm'
    else
      render :action => 'classified_index'
    end
  end

  def classified_thanks
    @classified = Classified.find(params[:classified_id])
    @user = @classified.user
    @inquiry = Inquiry.new(params_inquiry)
    NoticeMailer.send_mail(@inquiry, @user).deliver
    render :action => 'classified_thanks'
  end

  private
  def params_inquiry
    params.require(:inquiry).permit(:name, :email, :message, :user)
  end
end
