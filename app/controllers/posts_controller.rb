class PostsController < ApplicationController

    before_action :find_post, only: [:show]
    before_action :find_category, only: [:hobby, :study, :team]

    def show
    end

    # categories

    def hobby
    end

    def study
    end

    def team
    end

    private

    def get_posts
        Post.limit(30)
    end

    def posts_for_branch(branch)
        @categories = Category.where(branch: branch)
        @posts = get_posts.paginate(page: params[:page])
    end

    def find_category
        posts_for_branch(params[:action])
    end

    def find_post
        @post = Post.find(params[:id])
    end

    # def post_params
    # end
end
