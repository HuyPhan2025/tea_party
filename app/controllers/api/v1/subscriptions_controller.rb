class Api::V1::SubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    tea = Tea.find(params[:tea_id])
    sub = Subscription.new(sub_params)
    sub.save!
    render json: SubscriptionSerializer.new(sub)
  end

  def update
    sub = Subscription.find(params[:subcription_id])
    sub.update(sub_params)
    render json: SubscriptionSerializer.new(sub)
  end

  private
  
  def sub_params
    params.permit(:customer_id, :tea_id, :title, :price, :status, :frequency)
  end

end