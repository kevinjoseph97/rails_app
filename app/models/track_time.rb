class TrackTime < ApplicationRecord
  belongs_to :track
  belongs_to :driver
end
