class Physician < ActiveRecord::Base
    has_many :appointments
    has_many :Patients, through: :appointments
end
