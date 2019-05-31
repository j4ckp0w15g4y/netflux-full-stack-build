class Tier < ApplicationRecord
    has_and_belongs_to_many :movies
    has_many :users
end
