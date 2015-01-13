require 'csv'
require 'sunlight/congress'

Sunlight::Congress.api_key = "e70d6fb44df947a9bc8b5f51e34d5ca5"

def clear_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end


def legislators_by_zipcode(zipcode)
  legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

  legislator_names = legislators.collect do |legislator|
    "#{legislator.first_name} #{legislator.last_name}"
  end
  legislator_names.join(",")
end

puts "EventManager Initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  fname = row[:first_name]
  zipcode = clear_zipcode(row[:zipcode])

  legislators= legislators_by_zipcode(zipcode)

  puts "#{fname} #{zipcode}: #{legislators}"
end

