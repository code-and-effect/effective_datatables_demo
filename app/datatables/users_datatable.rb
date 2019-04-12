class UsersDatatable < Effective::Datatable

  datatable do
    col :first_name
    col :last_name
    col :city
  end

  collection do
    User.all.includes(:posts)
  end

end
