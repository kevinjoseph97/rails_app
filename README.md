# README

Car Track Mania


Driver
has_many :track_times
has_many :tracks through: :tracktimes 

Track 
has_many :tracktimes
has_many  :drivers, through: :tracktimes

TrackTime 
belongs_to :driver
belongs_to :track