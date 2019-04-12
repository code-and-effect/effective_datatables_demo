class PostsDatatable < Effective::Datatable

  datatable do
    col :title
    col :description
    col :draft
    col :user, label: 'Author'

    actions_col
  end

  collection do
    Post.all.includes(:user)
  end

end
