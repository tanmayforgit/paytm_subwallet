class CreatePaytmSubwalletRequests < ActiveRecord::Migration
  def change
    create_table :paytm_subwallet_requests do |t|
      t.text :header
      t.text :body
      t.integer :assignable_id
      t.string :assignable_type

      t.timestamps null: false
    end

    add_index :paytm_subwallet_requests, [:assignable_id, :assignable_type], name: 'assignable_index_on_paytm_subwallet_requests'
  end
end
