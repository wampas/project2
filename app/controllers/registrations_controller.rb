class RegistrationsController < Devise::RegistrationsController
  def update
    current_user.avatar = params[:user][:avatar] if params[:user][:avatar].present?
    current_user.save
    super
  end
end
