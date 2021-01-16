class ThingsDatatable < Effective::Datatable
  datatable do
    order :id

    col :updated_at, visible: false
    col :created_at, visible: false
    col :id, visible: false

    col :user
    col :title
    col :description
    col :approved

    actions_col
  end

  collection do
    Thing.deep.all
  end

end
