class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :list, foreign_key: true
      t.references :assignee
      t.references :creator
      t.string :title
      t.text :description
      t.boolean :archived, default: false, null: false

      t.timestamps
    end
    add_foreign_key :cards, :users, column: :creator_id
    add_foreign_key :cards, :users, column: :assignee_id
  end
end
