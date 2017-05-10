class Booking < ApplicationRecord
    belongs_to :classe
    validate :date_is_pass
    validates_presence_of :name, :phone, :email

    def date_is_pass
      errors.add(:classe_id, " is already start") if Classe.find(classe_id).date_start < DateTime.now.to_date
    end
end
