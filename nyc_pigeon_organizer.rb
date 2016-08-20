

def nyc_pigeon_organizer(data)
  

  data.each_with_object({}) do |(ctgry, color_name), new_hash|

    color_name.each do |color_nm, name_array|
      # byebug
      name_array.each do |name|


       #24 errors below
          # new_hash[name] += [ctgry]
    
          # new_hash[name] = new_hash[name].uniq
          # new_hash[name][ctgry] = [] unless new_hash[name][ctgry]
          # new_hash[name][ctgry] << color_nm.to_s
  




        #14 errors below for undefined method 'length' for nil
        
          # if new_hash[name] != true || new_hash[name] == nil
          #   new_hash[name] = {}
          # end

          # if new_hash[name][ctgry] != true || new_hash[name][ctgry] == nil
          #     new_hash[name][ctgry]=[] 
          #     new_hash[name][ctgry] << color_nm.to_s
          # else
          #     new_hash[name][ctgry] << color_nm.to_s
          # end
          unless new_hash[name]
            new_hash[name] = {}
          end

          unless new_hash[name][ctgry]
            new_hash[name][ctgry] = []
          end
          new_hash[name][ctgry] << color_nm.to_s

       
      end
    end
  end

end
# nyc_pigeon_organizer(pigeon_data)