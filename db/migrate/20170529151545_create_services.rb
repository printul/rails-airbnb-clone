class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.float :daily_rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
