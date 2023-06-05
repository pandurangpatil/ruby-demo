require 'stripe'

Stripe.api_key = 'YOUR_STRIPE_SECRET_KEY'

def create_charge(amount, source_token)
  customer = Stripe::Customer.create({
    email: 'customer@example.com',
    source: source_token
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: amount,
    currency: 'usd',
    description: 'Sample Charge'
  })

  charge
end

def update_order_status(order_id, status)
  puts "Updating order #{order_id} status to #{status} in the system..."
end

amount = 1000
source_token = 'tok_visa'
order_id = '123'

charge = create_charge(amount, source_token)

if charge.paid
  puts "Charge successful!"  
  update_order_status(order_id, 'paid')
else
  puts "Charge failed!"
end
