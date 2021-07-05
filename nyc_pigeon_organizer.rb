require "pry"

def nyc_pigeon_organizer(data)
  hash = {}
  array = []
  data.each do |memo, pair|
    pair.each do |color, result|
      array << result
    end
  end
  array.flatten!
  array.uniq!
  i = 0
  while i < array.length
    hash[array[i]] = {
      :color => [],
      :gender => [],
      :lives => []
    }
    i += 1
  end
  data.each do |thing, thing1|
    thing1.each do |attribute, data1|
      hash.each do |memo, pair|
        if thing == :color && data1.include?(memo)
          hash[memo][:color] << "#{attribute}"
        end
      end
    end
  end
  data.each do |thing, thing1|
    thing1.each do |attribute, data1|
      hash.each do |memo, pair|
        if thing == :gender && data1.include?(memo)
          hash[memo][:gender] << "#{attribute}"
        end
      end
    end
  end
  data.each do |thing, thing1|
    thing1.each do |attribute, data1|
      hash.each do |memo, pair|
        if thing == :lives && data1.include?(memo)
          hash[memo][:lives] << "#{attribute}"
        end
      end
    end
  end
  hash
end
