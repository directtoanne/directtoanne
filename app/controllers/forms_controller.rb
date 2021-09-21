class FormsController < ApplicationController
  def create
    @form = Form.new(form_params)
    if @form.save
      UserMailer.contact(@form).deliver_now
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end

  private

  def form_params 
    params.require(:form).permit(:first_name, :last_name, :email, :message)
  end
end
