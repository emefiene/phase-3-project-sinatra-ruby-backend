class Patient < ActiveRecord::Base
    has_many :reviews
    has_many :appointments
    has_many :physicians, through: :appointments
end