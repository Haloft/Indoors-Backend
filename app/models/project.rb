class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy

    def sum_hours
        return 0 unless tasks.count.positive?
        tasks.sum(:hours)
    end
end
