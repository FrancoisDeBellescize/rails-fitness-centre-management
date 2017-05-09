class Booking < ApplicationRecord
    belongs_to :classe
    validates_presence_of :name, :phone, :email
end
