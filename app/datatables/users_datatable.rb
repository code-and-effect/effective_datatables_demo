class UsersDatatable < Effective::Datatable

  datatable do
    col :first_name
    col :last_name
    col :city

    col :posts

    actions_col
  end

  collection do
    User.all.includes(:posts)
  end

end
