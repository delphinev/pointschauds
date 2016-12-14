class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :choice, index: true
      t.belongs_to :survey, index: true
      t.timestamps
    end

    add_foreign_key :votes, :users
    add_foreign_key :votes, :choices
    add_foreign_key :votes, :surveys
  end
end
