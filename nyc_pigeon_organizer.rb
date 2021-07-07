def nyc_pigeon_organizer(data)
  result = data.reduce({}) do |memo, (category, value_hash)|
     value_hash.each_pair do |entry, name_array|
       name_array.each do |name|
         if memo[name] == nil 
           memo[name] = {}
         end 
         if memo[name][category] == nil 
           memo[name][category] = []
         end 
         memo[name][category].push(entry.to_s)
       end 
     end
     memo
   end 
   p result
end

pidgeons = {
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
 nyc_pigeon_organizer(pidgeons)
