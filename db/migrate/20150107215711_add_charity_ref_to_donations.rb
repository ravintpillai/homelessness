class AddCharityRefToDonations < ActiveRecord::Migration
  def change
    add_reference :donations, :charity, index: true
  end
end
