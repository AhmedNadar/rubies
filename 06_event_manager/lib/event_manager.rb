require 'csv'
puts "EventManager Initialized!"

def clear_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  fname = row[:first_name]
  city = row[:city]
  state = row[:state]
  zipcode = clear_zipcode(row[:zipcode])
  # if the zip code is exactly five digits, assume that it is ok
  # if the zip code is more than 5 digits, truncate it to the first 5 digits
  # if the zip code is less than 5 digits, add zeros to the front until it becomes five digits
  puts "#{fname} lives in #{city} city, in #{state} state, and zipcode #{zipcode}. "
end

