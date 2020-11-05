require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_supplies[:summer][:fourth_of_july][1]# return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each { |key, value| holiday_hash[:winter][key] << supply}

  # arr_1 = holiday_supplies[:winter][:new_years]
  # arr_1 << "Balloons"
  # arr_2 = holiday_supplies[:winter][:christmas]
  # arr_2 << "Balloons"
  # holiday_supplies
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
# arr_1 = holiday_supplies[:spring][:memorial_day]
# arr_1 << "Grill"
# holiday_hash[:spring][:memorial_day].push(supply)
holiday_hash[:spring][:memorial_day] << supply

end 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash

  # binding.pry # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

  # binding.pry 
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
#  
holiday_hash.each do |season, holiday|
  #1st capitalize the season names
  puts "#{season.to_s.capitalize!}:"
  #2nd go down to holiday's names hash
  holiday.each do |name, supply|
    new_array = []
    array = name.to_s.split("_") #split all the words with _
    #capital names
    array.each { |word| new_array << word.capitalize! }
    #join separate words with " "
    name = new_array.join(" ")
    #turn array to string with join 
    supply = supply.join(", ")
    puts "  #{name}: #{supply}"
  end
end
end

    # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, season_hash|
    # binding.pry 
     return season_hash.map do |holiday, supply_arr|
      # using return here to save from shoving into var array on line 100
      # binding.pry 
     if supply_arr.include?("BBQ")
        array << holiday
     end
     end
    #  binding.pry 
  end  
  # array
  # binding.pry 
end
# return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"







