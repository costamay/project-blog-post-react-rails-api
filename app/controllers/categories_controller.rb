class CategoriesController < ApplicationController
    skip_before_action :authorize

    def index
        categories = Category.all
        render json: categories, status: :ok
    end

    def create
        category = Category.create!(category_params)
        render json: category, status: :created
    end

    private

    def category_params
        params.permit(:name)
    end
end
