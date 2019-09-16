class PostsDatatable < Effective::Datatable
  bulk_actions do
    bulk_action 'Publish selected', bulk_publish_posts_path, data: { confirm: 'Publish all selected posts?' }
    bulk_action 'Unpublish selected', bulk_unpublish_posts_path, data: { confirm: 'Unpublish all selected posts?' }
  end

  filters do
    scope :all
    scope :published
    scope :unpublished

    # nil is the default value
    filter :user_id, nil, as: :select, collection: User.all
  end

  datatable do
    length 5

    col :id, visible: false

    col :published_at do |post|
      post.published_at&.strftime('%F') || 'Not published'
    end

    col :draft

    col :title
    col :score
    col :description
    col :user

    actions_col

    aggregate :total
  end

  collection do
    scope = Post.all.includes(:user)

    if filters[:user_id].present?
      scope = scope.where(user_id: filters[:user_id])
    end

    scope
  end

end
