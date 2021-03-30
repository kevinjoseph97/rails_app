class Track < ApplicationRecord
    has_many :track_times
    has_many :drivers, through: :track_times
    
end
