class CreateTicketsOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets_orders do |t|

      t.timestamps
    end
  end
end
