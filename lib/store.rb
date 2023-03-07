class Store < ActiveRecord::Base
    has_many :employees
    validate :must_have_name, :positive_revenue

    def must_have_name
        if !name.present?
            errors.add(:name, "cannot be empty")
        end
    end

    def positive_revenue
        if annual_revenue.present? && annual_revenue < 0 
            errors.add(:annual_revenue, "cannot be below 0")
        end
        if !annual_revenue.present?
            errors.add(:annual_revenue, "Cannot be empty")
        end
    end

end
