class UserMailer < ApplicationMailer

def welcome(user)
  mail(to: user, subject: "Bienvenido a Gymbro")
end

def oneWeekUser
  mail(to: user, subject: "Tu primer semana siendo un Gymbro")
  end
end
