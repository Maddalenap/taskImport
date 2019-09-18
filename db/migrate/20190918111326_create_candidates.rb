class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :job
      t.date :created_at

      t.timestamps
    end
  end
end
