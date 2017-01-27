class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      body: params[:body],
      user_id: current_user.id,
      deed_id: params[:deed_id]
    )

    @deed = Deed.find(params[:deed_id])
    
    if @comment.save
      flash[:success] = "Thanks! Your comment was submitted!"
      redirect_to "/deeds/#{@comment.deed_id}"
    else
      flash[:success] = "Your comment did not save!"
      render "deeds/show"
    end
  end
end
