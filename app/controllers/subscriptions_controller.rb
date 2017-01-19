class SubscriptionsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    subscription = Subscription.new(user_id: params[:user_id], deed_id: params[:deed_id])
    subscription.save
    flash[:success] = "You've subscribed to a Deed!"
    # p subscription.errors.full_messages
    redirect_to '/deeds'
  end

end
