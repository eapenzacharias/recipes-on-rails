# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :public, presence: true
end
