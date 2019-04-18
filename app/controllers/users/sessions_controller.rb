# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # <!-- https://medium.com/@alexmartin1124/the-magic-of-the-acts-as-follower-gem-100089299233 -->
  # def follow
  #   current_user.follow(@blog)
  #   @follow = Follow.find_by(follower: @current_user, followable: @blog)
  #   respond_to :js
  # end

  # def unfollow
  #   current_user.stop_following(@blog)
  #   respond_to :js
  # end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
