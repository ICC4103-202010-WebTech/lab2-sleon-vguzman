class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :type
      t.string :event
      t.numeric :price


      t.timestamps
    end
  end
end
