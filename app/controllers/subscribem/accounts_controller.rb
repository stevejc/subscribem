require_dependency "subscribem/application_controller"

module Subscribem
  class AccountsController < ApplicationController
    def new
      @account = Subscribem::Account.new
      @account.build_owner
    end
    
    def create      
      @account = Subscribem::Account.new(params[:account])
      if @account.save
        flash[:success] = "Your account has been successfully created."
        redirect_to subscribem.root_url(:subdomain => @account.subdomain)
      else
        flash[:error] = "Sorry, your account could not be created."
        render :new
      end
    end
  	
  end
end
