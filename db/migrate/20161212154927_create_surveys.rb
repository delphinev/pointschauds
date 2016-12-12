class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.decimal :score
      t.text :context
      t.integer :creator_id
      t.timestamps
    end

    add_foreign_key :surveys, :users, column: :creator_id
  end
end
