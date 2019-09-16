class ChartsDatatable < Effective::Datatable

  charts do
    chart :my_line_chart, 'LineChart', label: 'Breakfast Lines' do |collection|
      [['Food', 'Price'], ['Bacon', 10], ['Eggs', 20], ['Toast', 30]]
    end

    chart :my_bar_chart, 'BarChart', label: 'Breakfast Bars', legend: false do |collection|
      [['Food', 'Price'], ['Bacon', 10], ['Eggs', 20], ['Toast', 30]]
    end

  end

  collection do
    []
  end

end
