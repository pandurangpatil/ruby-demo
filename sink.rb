require './source'

def print_customer(customer_id)
    puts customer_id
end

def process_customer
    cus_id = get_customer_id()
    print_customer(cus_id)
end

process_customer()



