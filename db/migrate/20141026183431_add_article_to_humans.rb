class AddArticleToHumans < ActiveRecord::Migration
  def change
    add_column :humans, :article, :text
  end
end
