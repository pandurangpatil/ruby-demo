# Issue number 41

require 'stripe'

# Type inference for customer
customer = Stripe::Customer.retrieve(
  'cu_19YMK02eZvKYlo2Cvcb2J41W',
  {
    api_key: 'sk_test_your_key',
  }
)


customer.capture 