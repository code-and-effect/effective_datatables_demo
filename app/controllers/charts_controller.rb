class ChartsController < ApplicationController

  def index
    @datatable = ChartsDatatable.new
    @page_title = 'Chart Example'
  end

end
