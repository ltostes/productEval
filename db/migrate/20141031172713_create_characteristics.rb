class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.boolean :evaluable
      t.text :description
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
