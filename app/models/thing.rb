class Thing < ApplicationRecord
  belongs_to :user

  effective_resource do
    title           :string
    description     :text

    approved        :boolean

    timestamps
  end

  scope :deep, -> { includes(:user) }
  scope :sorted, -> { order(:title) }

  def to_s
    title
  end

  def approve!
    update!(approved: true)
  end

  def reject!
    update!(approved: false)
  end

end
