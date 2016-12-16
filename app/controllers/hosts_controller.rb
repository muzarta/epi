class HostsController < ApplicationController
    
    def new
    @host = Host.new
    end
    
    def create
    @host = Host.new(host_params)
    
    @host.save
    redirect_to new_host_path
    end
    
    private
    def host_params
        params.require(:host).permit(:firstname, :lastname, :email, :companyname, :state, :suburb, :notes )
    end
    
end
