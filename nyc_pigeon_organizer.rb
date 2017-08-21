def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |attribute, att_deet_hash|
    att_deet_hash.each do |att_deet, pigeon_array|
      pigeon_array.each do |pigeon|
        if new_hash[pigeon].nil?
          new_hash[pigeon] = {}
        end
        new_hash[pigeon][attribute] ||= []
        new_hash[pigeon][attribute] << att_deet.to_s

      end
    end
  end
  new_hash
end
