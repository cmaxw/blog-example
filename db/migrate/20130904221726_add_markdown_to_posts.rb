class AddMarkdownToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :markdown, :text
  end
end
