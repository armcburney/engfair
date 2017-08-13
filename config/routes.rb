# frozen_string_literal: true

Rails.application.routes.draw do
  get  "home/index"
  post "home/index", to: "home#mail"

  root "home#index"
end
