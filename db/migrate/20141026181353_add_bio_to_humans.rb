class AddBioToHumans < ActiveRecord::Migration
  def change
    add_column :humans, :bio, :text
  end
end
