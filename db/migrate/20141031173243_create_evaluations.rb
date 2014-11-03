class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.text :comment
      t.belongs_to :product_characteristics, index: true
      t.belongs_to :user, index: true
      t.belongs_to :customer, index:true

      t.timestamps
    end
  end
end
