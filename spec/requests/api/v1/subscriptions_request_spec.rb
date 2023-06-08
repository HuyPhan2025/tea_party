require 'rails_helper'

RSpec.describe 'Subscriptions', type: :request do
  describe '#create' do
    it 'create a new subscription' do
      customer1 = create(:customer)
      customer2 = create(:customer)
      
      tea1 = create(:tea)
      tea2 = create(:tea)
      tea3 = create(:tea)

      sub1 = create(:subscription, customer: customer1, tea: tea1)
      sub2 = create(:subscription, customer: customer1, tea: tea3)
      sub3 = create(:subscription, customer: customer2, tea: tea2)

      new_sub = {
        customer_id: customer1.id,
        tea_id: tea1.id,
        title: sub1.title,
        price: sub1.price,
        status: 'active',
        frequency: sub1.frequency
      }
      
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post "/api/v1/customers/#{customer1.id}/subscriptions", headers:, params: JSON.generate(new_sub)

      expect(response).to be_successful
  
      parsed_data = JSON.parse(response.body, symbolize_names: true)
 
      expect(parsed_data).to be_a(Hash)
      expect(parsed_data[:data]).to be_a(Hash)
      expect(parsed_data[:data].keys).to eq([:id, :type, :attributes])
      expect(parsed_data[:data][:attributes]).to be_a(Hash)
      expect(parsed_data[:data][:attributes].keys).to eq([:customer_id, :tea_id, :title, :price, :status, :frequency])
    end
  end

  describe "#update" do
    it "can cancel a subscription" do
      customer1 = create(:customer)
      customer2 = create(:customer)
      
      tea1 = create(:tea)
      tea2 = create(:tea)
      tea3 = create(:tea)

      sub1 = create(:subscription, customer: customer1, tea: tea1)
      sub2 = create(:subscription, customer: customer1, tea: tea3)
      sub3 = create(:subscription, customer: customer2, tea: tea2)

      previous_status = sub1.status

      sub_params = {
        customer_id: customer1.id,
        tea_id: tea1.id,
        title: sub1.title,
        price: sub1.price,
        status: 'cancel',
        frequency: sub1.frequency
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      patch "/api/v1/customers/#{customer1.id}/subscriptions/#{sub1.id}", headers:, params: JSON.generate(sub_params)

      expect(response).to be_successful

      parsed_data = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_data).to be_a(Hash)
      expect(parsed_data[:data]).to be_a(Hash)
      expect(parsed_data[:data][:attributes].keys).to eq([:customer_id, :tea_id, :title, :price, :status, :frequency])
      expect(parsed_data[:data][:attributes][:status]).to_not eq(previous_status)
      expect(parsed_data[:data][:attributes][:status]).to eq('cancel')
    end
  end
end