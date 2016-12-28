class CreateRequest < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :header
      t.text :body
      t.integer :assignable_id
      t.string :assignable_type
    end

    add_index :requests, [:assignable_id, :assignable_type], name: 'assignable_index_on_request'
  end
end
