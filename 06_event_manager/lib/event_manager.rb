require 'csv'
puts "EventManager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  fname = row[:first_name]
  city = row[:city]
  state = row[:state]
  puts "#{fname} from #{city} which is part of #{state} state. "
end