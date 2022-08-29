class PostsController < ApplicationController

    skip_before_action :authorize

    def index
        posts = Post.all.order(created_at: :desc)
        render json: posts, status: :ok
    end

    # def create
    #     user = User.find(user_id: params[:user_id])
    #     puts user
    #     post = user.posts.create(post_params)
    #     # byebug
    #     render json: post, status: :created
    # end

    def create
        user = User.find_by(id: params[:user_id])
        category = Category.find_by(id: params[:category_id])
        post = user.posts.build(post_params)
        post.category = category
        post.save
        if post.valid?
            render json: post, status: :created
        else
            render json: { errors: post.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        post = Post.find_by(id: params[:id])
        post.update(post_params)
        render json: post
    end

    def destroy
        post = Post.find_by(id: params[:id])
        post.destroy
        head :no_content
    end

    private

    def post_params
        params.permit(:title, :content, :post_url)
    end
end
