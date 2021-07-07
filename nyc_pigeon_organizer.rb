def nyc_pigeon_organizer(data)
organized_pigeons = {}
  data.each do |key, value|
    value.each do |next_key, names|
      names.each do |name|
        
        if !organized_pigeons[name]
          organized_pigeons[name] = {}
        end

        if !organized_pigeons[name][key]
          organized_pigeons[name][key] = []
        end
        
        organized_pigeons[name][key] << next_key.to_s
      end
    end
  end
  organized_pigeons
end