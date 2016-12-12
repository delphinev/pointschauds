class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.belongs_to :survey, foreign_key: true, default: false, index: true
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end
