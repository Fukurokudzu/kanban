class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string 'title'
      t.references :project
      t.timestamps
      t.index ['title'], name: 'index lists title'
    end
  end
end
