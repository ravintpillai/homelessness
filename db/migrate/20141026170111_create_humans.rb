class CreateHumans < ActiveRecord::Migration
  def change
    create_table :humans do |t|
      t.string :first_name
      t.string :last_name
      t.string :url

      t.timestamps
    end
  end
end
