class AddPhoneToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :phone, :string
  end
end
