class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  def integer_string?(str)
    Integer(str)
    true
  rescue ArgumentError
    false
  end

end
