# frozen_string_literal: true

class HomeController < ApplicationController
  def index() end

  def mail
    ContactMailer.email(params[:mail]).deliver
    redirect_to root_url, notice: "Thank you for your interest, your email has been sent. We will respond shortly."
  end
end
