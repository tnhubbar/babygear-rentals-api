class FamiliesController < ApplicationController

    def index
        @accounts = Account.all 
        render json: @accounts  

    end 


    def create 
        @account = Account.new(account_params)
        if @account.save 
            render json: @account
        else 
            render json: {error: 'Error creating account'}
        end 
    end 


    def show 
        @account = Account.find(params[:id])
        render json: @account 

    end 

    def destroy 
        @account = Account.find(params[:id])
        account.destroy 
    end


    private 

    def family_params
        params.require(:family).permit(:name, :location, :contact_number)

    end 

end
