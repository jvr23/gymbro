class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # UserMailer.welcome.deliver_now
    # TestJob.set(wait: 10.seconds).perform_later
  end
end