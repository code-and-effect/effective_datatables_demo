class PostsController < ApplicationController

  def index
    @datatable = PostsDatatable.new
  end
  
end
