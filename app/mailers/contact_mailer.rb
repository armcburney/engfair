# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def email(args)
    @name    = args[:name]
    @email   = args[:email]
    @company = args[:company]
    @body    = args[:message]

    mail(
      to: "careerfair@engsoc.uwaterloo.ca",
      cc: "vpacademic.b@engsoc.uwaterloo.ca",
      subject: "EngFair Contact Form Email"
    )
  end
end
