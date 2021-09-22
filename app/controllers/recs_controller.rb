class RecsController < ApplicationController
  before_action :find_rec, only: [:show, :destroy, :edit, :update]

  def create
    @rec = Rec.new(rec_params)
    if @rec.save 
      redirect_to rec_path(@rec)
    else
      render :new
    end
  end
  
  def new
    @rec = Rec.new
  end

  def index
    @recs = Rec.all
  end

  def show
  end

  def edit
  end

  def update
    @rec.update(rec_params)
    redirect_to rec_path(@rec)
  end

  def destroy
    @rec.destroy
    redirect_to recs_path
  end

  private

  def find_rec
    @rec = Rec.find(params[:id])
  end

  def rec_params
    params.require(:rec).permit(:creator, :synopsis, :title, :why, :imdb_rating, :rt_rating, :release_date, :photo, :link, :duration, :tag_list)
  end
end
