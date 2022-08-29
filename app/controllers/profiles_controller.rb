class ProfilesController < ApplicationController
    def create
        profile = @current_user.profile.create(profile_params)
        render json: profile
    end

    private

    def profile_params
        params.permit(:email, :bio, :avatar_url)
    end
end
