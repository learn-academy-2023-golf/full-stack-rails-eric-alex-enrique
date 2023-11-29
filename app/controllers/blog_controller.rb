class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
    @blog = Blog.find(params[:id])
    end

    def new 
        @blog = Blog.new 
    end

    def create 
        @blog = Blog.create(blog_params)
        if @blog.title != ''
           if @blog.valid?
             redirect_to
             root_path
           end
        end
        if @blog.valid? 
        redirect_to root_path
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy 
            redirect_to root_path
        end
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])
        @blog.update(blog_params)
        if @blog.valid?
            redirect_to blog_path(@blog)
        end
    end

    private 
    def blog_params
        params.require(:blog).permit(:title,:content)   
    end
end