pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above, 
# collecting each pigeon by name 
# and insert it as the key of a new hash where each name holds the attributes for that bird.

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value| #key: color, gender, lives. #value: hash
    value.each do |describe, array| #describe: purple, male, subway...
      array.each do |name| #name: index inside aray
        #check if the empty hash has name inside yet
        if pigeon_list.has_key?(name)
          #check if the value of name key has key(color, gender, lives)
          if pigeon_list[name].has_key?(key)
          #if name has key already, add the describe value at the current iteration
            pigeon_list[name][key] << describe.to_s
          #if name has no key at the current iteration yet, set the new hash
          else
            pigeon_list[name][key] = [describe.to_s]
          end
        #set name level 1 -> key level 2 with describe as value of the hash 
        else
          pigeon_list[name] = {key => [describe.to_s]} #describe was symbol before so turn it to string
        end
      end
    end
  end
  pigeon_list
end

