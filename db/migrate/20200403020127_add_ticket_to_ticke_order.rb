class AddTicketToTickeOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticke_orders, :ticket, null: true, foreign_key: true
  end
end
