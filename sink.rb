require './source'

cus_id = get_customer_id()

def print_customer(customer_id)
    puts customer_id
end

def process_customer(customer_id)
    print_customer(customer_id)
end

process_customer(cus_id)



