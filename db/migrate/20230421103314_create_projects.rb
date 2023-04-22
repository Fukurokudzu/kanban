class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string 'title'
      t.string 'color'
      t.timestamps
      t.references :user
      t.index ['title'], name: 'index projects title'
    end
  end
end
