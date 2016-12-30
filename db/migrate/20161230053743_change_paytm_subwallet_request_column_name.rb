class ChangePaytmSubwalletRequestColumnName < ActiveRecord::Migration
  def up
  	rename_column :paytm_subwallet_responses, :paytm_subwallet_requests_id, :paytm_subwallet_request_id
  end

  def down
  	rename_column :paytm_subwallet_responses, :paytm_subwallet_request_id, :paytm_subwallet_requests_id
  end
end
