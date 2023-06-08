require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe '#show' do
    it 'display all of a customer subscriptions' do
      customer1 = create(:customer)
      customer2 = create(:customer)

      tea1 = create(:tea)
      tea2 = create(:tea)
      tea3 = create(:tea)

      sub1 = create(:subscription, customer: customer1, tea: tea1)
      sub2 = create(:subscription, customer: customer1, tea: tea3)
      sub3 = create(:subscription, customer: customer2, tea: tea2)

      get "/api/v1/customers/#{customer1.id}"

      expect(response).to be_successful

      customers = JSON.parse(response.body, symbolize_names: true)

      expect(customers).to be_a(Hash)
      expect(customers[:data]).to be_an(Array)
      expect(customers[:data].count).to eq(2)
    end
  end
end