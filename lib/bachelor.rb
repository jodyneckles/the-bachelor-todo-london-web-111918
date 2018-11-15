require 'pry'

def get_first_name_of_season_winner(data, season)
    data.each do |hash_season, contestants_array|
      #binding.pry
      if hash_season == season
        contestants_array.each do |contestant|
        #binding.pry
          if contestant["status"] == "Winner"
            return contestant["name"].split.first
          end
        end
      end
    end
  end

def get_contestant_name(data, occupation)
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
      #binding.pry
    end
  end
  # code here
end

def count_contestants_by_hometown(data, hometown)
  array = []
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        array << contestant["name"]
      end
    end
  end
  #binding.pry
  array.length
end

def get_occupation(data, hometown)
end

def get_occupation(data, hometown)
  # code here
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here

  contestant_ages = data[season].collect { |contestant| contestant["age"].to_i }
    #binding.pry
  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count = contestant_ages.size.to_f
  (summed_ages/contestant_count).round
end
