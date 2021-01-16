class PostsController < ApplicationController
  include Effective::CrudController

  def index
    @datatable = PostsDatatable.new
    @page_title = 'Advanced Example (Posts)'
  end

  def show
    @post = Post.find(params[:id])
    @page_title = "Post #{@post.id}"
  end

  def edit
    @post = Post.find(params[:id])
    @page_title = "Edit Post #{@post.id}"
  end

  def bulk_publish
    @posts = Post.where(id: params[:ids])

    begin
      @posts.each { |post| post.publish! }
      render json: { status: 200, message: "Successfully published #{@posts.length} posts." }
    rescue => e
      render json: { status: 500, message: 'An error occured while publishing a post.' }
    end
  end

  def bulk_unpublish
    @posts = Post.where(id: params[:ids])

    begin
      @posts.each { |post| post.unpublish! }
      render json: { status: 200, message: "Successfully unpublished #{@posts.length} posts." }
    rescue => e
      render json: { status: 500, message: 'An error occured while unpublishing a post.' }
    end
  end

  def permitted_params
    params.require(:post).permit!
  end

end
