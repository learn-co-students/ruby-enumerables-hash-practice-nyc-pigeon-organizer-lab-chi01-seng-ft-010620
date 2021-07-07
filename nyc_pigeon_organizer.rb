require 'pry'
def nyc_pigeon_organizer(data)
  pigeons = {}
  collection = []
  data.each { |key , value| 
  value.each { |att, names|
  names.each { |name|
  if !collection.include?(name)
  collection << name 
end

    }
  }
}
collection.each { |n| 
pigeons[n] = Hash.new {|ke, val| ke[val] = []}
data.each { |key, value|
  pigeons[n][key]
  value.each { |att, names|
    names.each { |name|
pigeons[name][key] << att.to_s if name == n 
      }
    }
  }
}
pigeons



end
