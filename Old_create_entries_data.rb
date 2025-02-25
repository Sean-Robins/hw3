#old version of data load - use create_sample_data.rb instead

Entry.destroy_all

require 'date'
# Create entry

entry = Entry.new 
entry["title"] = "Liberty Bell"
entry["description"] = "Saw the bell with the crack"
entry["occurred_on"] = Date.today
entry["place_id"] = 1
entry.save 

entry = Entry.new 
entry["title"] = "Sixers"
entry["description"] = "went to sixers game"
entry["occurred_on"] = Date.today - 1
entry["place_id"] = 1
entry.save 

all_entries = Entry.all 

puts all_entries.inspect 