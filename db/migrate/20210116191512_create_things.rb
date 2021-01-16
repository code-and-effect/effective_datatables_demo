class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.integer :user_id

      t.string :title
      t.text :description
      t.boolean :approved, default: false

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
