class CreateSignets < ActiveRecord::Migration[7.1]
  def change
    create_table :signets do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
