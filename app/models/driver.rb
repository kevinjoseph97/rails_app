class Driver < ApplicationRecord
    has_secure_password
    has_many :tracktimes
    has_many :tracks, through: :tracktimes 
end
