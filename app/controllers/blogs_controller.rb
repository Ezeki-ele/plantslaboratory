class BlogsController < ApplicationController
    def index
        @blog = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        @blog.save
    end

    def update
    end

    def destroy
    end

    private
    def blog_params
    params.require(:blog).permit(:title, :content, :image)
    end
end
