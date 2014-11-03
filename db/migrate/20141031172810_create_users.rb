class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.text :about
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
