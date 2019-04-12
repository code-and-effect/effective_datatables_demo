class Post < ApplicationRecord
  belongs_to :user

  # Attributes
  # title           :string
  # description     :text
  #
  # draft           :boolean
  # published_at    :datetime
  #
  # score           :integer
  #
  # timestamps

  scope :published, -> { where(draft: false) }
  scope :unpublished, -> { where(draft: true) }

  def to_s
    title
  end

  def publish!
    update!(draft: false, published_at: Time.zone.now)
  end

  def unpublish!
    update!(draft: true, published_at: nil)
  end

end