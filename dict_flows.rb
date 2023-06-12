# Issue number 71

def increment_number(dict, key)
    dict[key] = dict[key] + 1
end


def puts_dict(dict)
    dict.each do |key, val|
        puts "#{key} -> #{val}" 
    end
end

def hashed_values(type)
    row_vehicle = {}
    row_vehicle['NUMBER'] = type["NUMBER"]

    increment_number(row_vehicle, "NUMBER")

    puts_dict(row_vehicle)
end


hashed_values({"NUMBER" => 1})