class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string 'title'
      t.string 'description'
      t.references :list
      t.timestamps
      t.index ['title'], name: 'index card title'
    end
  end
end
