class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
    CodaccinoMailer.new_user_email(current_user).deliver
  end
end