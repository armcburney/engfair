# frozen_string_literal: true

Rails.application.routes.draw do
  get  "home/index"
  post "", to: "home#mail"

  root "home#index"
end
