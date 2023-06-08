class Api::V1::CustomersController < ApplicationController
  def show
    customer = Customer.find(params[:customer_id])
    customer_subs = customer.subscriptions
    render json: SubscriptionSerializer.new(customer_subs)
  end
end

