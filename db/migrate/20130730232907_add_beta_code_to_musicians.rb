class AddBetaCodeToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :beta_code, :string
  end
end
