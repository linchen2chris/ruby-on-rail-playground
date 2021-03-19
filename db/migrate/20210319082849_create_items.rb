class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
