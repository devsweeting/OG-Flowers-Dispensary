class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t. column :strain, :string
      t. column :cann_abbr, :string
      t. column :cost, :float
      t. column :origin, :string

    end
  end
end
