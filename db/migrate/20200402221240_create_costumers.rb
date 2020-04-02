class CreateCostumers < ActiveRecord::Migration[6.0]
  def change
    create_table :costumers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.numeric :phone
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
