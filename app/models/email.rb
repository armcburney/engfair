# frozen_string_literal: true

class Email < ApplicationRecord
  validates :name, :email, :company, :message, presence: true
  validates_email_format_of :email, message: "format not proper"

  after_create :send_email

  def send_email
    ContactMailer.email(self).deliver
  end
end
