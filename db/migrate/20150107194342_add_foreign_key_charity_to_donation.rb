class AddForeignKeyCharityToDonation < ActiveRecord::Migration
  def change
  	add_foreign_key :donations, :charities
  end
end
