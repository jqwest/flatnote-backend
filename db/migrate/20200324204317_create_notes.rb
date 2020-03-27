class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.string :tags
      t.integer :user_id
      t.boolean :done

      t.timestamps
    end
  end
end
