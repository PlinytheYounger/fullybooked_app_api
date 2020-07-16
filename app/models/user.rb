class User < ApplicationRecord
    has_many :lists
    has_many :bookclubs, through: :lists
end
