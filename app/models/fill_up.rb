# frozen_string_literal: true

class FillUp < ApplicationRecord
  belongs_to :user
  validates :date, format: { with: /(\d{4})\D?(0[1-9]|1[0-2])\D?([12]\d|0[1-9]|3[01])/, message: "invalid date" }
  # validates :date, length: { is: 10, message: "invalid date" }
  # validates :distance, format: { with: /\A\d*\.?\d{1,2}\z/, message: "invalid distance" }
  # validates :duration, format: { with: /\A\d*\.?\d{1,2}\z/, message: "invalid duration" }
end
