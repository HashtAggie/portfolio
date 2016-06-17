class AddTitleTextToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :text, :text
  end
end
