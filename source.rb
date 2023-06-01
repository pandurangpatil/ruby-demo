require './sink'

def get_customer_id
    customer_id = "abcde"
    return customer_id
end

def process_customer
    cus_id = get_customer_id()
    print_customer(cus_id)
end

process_customer()