class CreateProcessIpAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :process_ip_addresses do |t|

      t.timestamps
    end
  end
end
