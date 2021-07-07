def nyc_pigeon_organizer(data)
  pigeon_names_array = data[:gender][:male] + data[:gender][:female]
  pigeon_list = {}
  pigeon_names_array.each do |name|
    pigeon_data = {
      color: [],
      gender: [],
      lives: []
    }
    data[:color].each do |color_name, values|
      if values.include?(name)
        pigeon_data[:color].push(color_name.to_s)
      end
    end
    data[:gender].each do |gender_name, values|
      if values.include?(name)
        pigeon_data[:gender].push(gender_name.to_s)
      end
    end
    data[:lives].each do |lives_name, values|
      if values.include?(name)
        pigeon_data[:lives].push(lives_name.to_s)
      end
    end
    pigeon_list[name] = pigeon_data
  end
  pigeon_list
end
