# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      ## Database authenticatable
      t.string :title
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end
