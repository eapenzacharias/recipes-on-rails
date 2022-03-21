# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  has_many :foods, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :inventories, dependent: :destroy
end
