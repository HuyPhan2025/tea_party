# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
john = Customer.create(first_name: "John", last_name: "Smith", email: "john@example.com", address: "123 Hills Street")
kate = Customer.create(first_name: "Kate", last_name: "Hudson", email: "kate@example.com", address: "325 West Avenue")

green = Tea.create(title: "Green", description: "Smooth and light", temperature: 90, brew_time: 5)
jasmine = Tea.create(title: "Jasmine", description: "Bold and flavorful", temperature: 100, brew_time: 3)
black = Tea.create(title: "Black", description: "Strong and refreshing", temperature: 50, brew_time: 10)

sub1 = Subscription.create(title: "Green", price: 5.50, status: "active", customer_id: "#{john.id}", tea_id: "#{green.id}", frequency: "monthly")
sub2 = Subscription.create(title: "Jasmine", price: 7.50, status: "cancel", customer_id: "#{john.id}", tea_id: "#{jasmine.id}", frequency: "monthly")
sub3 = Subscription.create(title: "Black", price: 7.50, status: "cancel", customer_id: "#{kate.id}", tea_id: "#{black.id}", frequency: "yearly")




