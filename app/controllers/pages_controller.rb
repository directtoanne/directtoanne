class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @form = Form.new
  end
end
