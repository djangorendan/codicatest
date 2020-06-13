class AddDiscriptionToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :discription, :text
  end
end
