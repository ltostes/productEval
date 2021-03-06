class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.text :comment
      t.belongs_to :product_characteristic, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
