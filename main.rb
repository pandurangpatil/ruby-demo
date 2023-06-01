require './customer'
require './person_identification'

def process_transaction(credit_card_number, customer_id)
    puts credit_card_number
    puts customer_id
end


process_transaction(Customer::CUSTOMER_CREDIT_CARD, $customer_id)

def identify_person(passport_number)
    puts passport_number
end

identify_person($passport_number)
identify_person(Person::DL_NUMBER)