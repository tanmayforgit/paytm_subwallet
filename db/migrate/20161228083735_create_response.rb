class CreateResponse < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :header
      t.text :body
      t.integer :assignable_id
      t.string :assignable_type
      t.references :request, index: :true
    end

    add_index :responses, [:assignable_type, :assignable_id], name: 'assignable_index_on_response'
  end
end
