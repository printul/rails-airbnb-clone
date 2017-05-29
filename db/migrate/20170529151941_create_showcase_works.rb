class CreateShowcaseWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :showcase_works do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
