class User < ApplicationRecord
    validates :name, presence: true
    has_many :foods, dependent: :destroy
end
