class UsersController < ApplicationController

  def index
    @datatable = UsersDatatable.new
    @page_title = 'Simple Example (Users)'
  end
  
end
