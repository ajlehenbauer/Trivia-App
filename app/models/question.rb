class Question < ApplicationRecord
    validates :title, presence: true
    validates :correct, presence: true
    validates :wrong1, presence: true
end
