def nyc_pigeon_organizer(data)
  pigeon_list = {}
  colors = data[:color].keys
  names = []
  i = 0
  while data[:color][colors[i]] do
    names.push(data[:color][colors[i]])
    i += 1
  end
  name_keys = names.flatten.uniq
  name_keys.each do | name |
    pigeon_list[name] = Hash.new
    pigeon_list[name][:color] = []
    pigeon_list[name][:gender] = []
    pigeon_list[name][:lives] = []
  end
  data[:color].each do | color, array |
    data[:color][color].each do | name |
      pigeon_list[name][:color].push(color.to_s)
    end
  end
    data[:gender].each do | gender, array |
    data[:gender][gender].each do | name |
      pigeon_list[name][:gender].push(gender.to_s)
    end
  end
    data[:lives].each do | place, array |
    data[:lives][place].each do | name |
      pigeon_list[name][:lives].push(place.to_s)
    end
  end
  p pigeon_list
end
