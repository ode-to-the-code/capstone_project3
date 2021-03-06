class DeedsController < ApplicationController

  def index
    if params[:search_name].present?
      @deeds = Deed.where("name LIKE ?", "%#{params[:search_name]}%")
    else
      @deeds = Deed.all
    end
      render 'index.html.erb'
  end

  def show
    @deed = Deed.find_by(id: params[:id])
    @comment = Comment.new
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    deed = Deed.new(
      max_volunteers: params[:max_volunteers],
      min_volunteers: params[:min_volunteers],
      description: params[:description],
      location: params[:location],
      category: params[:category],
      max_points: params[:max_points],
      name: params[:name],
      image: params[:image],
      user_id: current_user.id
      )
    deed.save
    redirect_to "/deeds/#{deed.id}"


  end

end
