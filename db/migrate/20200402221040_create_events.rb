class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.timestamps :startdate
      t.string :venue

      t.timestamps
    end
  end
end
