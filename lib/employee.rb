class Employee < ActiveRecord::Base

    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :store_id, presence: true
    validate :hourly_rate_check

    def hourly_rate_check

        if !hourly_rate.present?
            errors.add(:hourly_rate, "cannot be empty")
        end
        
        if hourly_rate.present? && hourly_rate < 40
            errors.add(:hourly_rate, "invalid hourly rate")
        end

        if hourly_rate.present? && hourly_rate > 200
            errors.add(:hourly_rate, "invalid hourly rate")
        end
    end


end
