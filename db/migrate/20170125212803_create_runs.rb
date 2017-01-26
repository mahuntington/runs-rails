class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.decimal :distance
      t.decimal :time
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
