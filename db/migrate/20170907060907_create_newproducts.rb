class CreateNewproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :newproducts do |t|
      t.string :products_name
      t.string :stor_name：string
      t.date :release_date

      t.timestamps
    end
  end
end
