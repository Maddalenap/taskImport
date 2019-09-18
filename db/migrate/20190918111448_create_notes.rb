class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :email
      t.string :note

      t.timestamps
    end
  end
end
