class RegistrationsController < Devise::RegistrationsController
  def update
    current_user.avatar = params[:user][:avatar] if params[:user][:avatar].present?
    current_user.save
    super
  end

   protected

    def after_update_path_for(resource)
      user_path(resource)
    end

end
