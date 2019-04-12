class User < ApplicationRecord
  has_many :posts

  # Attributes
  # first_name    :string
  # last_name     :string
  # city          :string
  #
  # timestamps

  def to_s
    [first_name, last_name].compact.join(' ')
  end

end