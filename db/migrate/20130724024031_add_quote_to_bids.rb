class AddQuoteToBids < ActiveRecord::Migration
  def change
    add_column :bids, :quote, :float
  end
end
