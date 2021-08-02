class ProcessIpAddressesController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /process_ip_addresses or /process_ip_addresses.json
  def index
    
  end
  
  def validator
    ip = params[:process_ip_address]
    valid = ProcessIpAddress.is_valid_ip(ip)
    redirect_to :root , notice: valid ? ip : "Invalid Address" 
  end

  private
    # Only allow a list of trusted parameters through.
    def process_ip_address_params
      params.fetch(:process_ip_address)
    end
end
