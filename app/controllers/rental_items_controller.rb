class RentalItemsController < ApplicationController

    def index

        @rental_items = Rental_item.all 
        render json: @rental_items  

    end 


    def create 
        @rental_item = Rental_item.new(rental_item_params)
        if @rental_item.save 
            render json: @rental_item
        else 
            render json: {error: 'Error creating rental item'}
        end 
    end 


    def show 
        @rental_item = Rental_item.find(params[:id])
        render json: @rental_item 

    end 

    def destroy 
        @rental_item = Rental_item.find(params[:id])
        account.destroy 
    end


    private 

    def set_family
        @family = Family.find(params[:family_id])
    end 

    def rental_item_params
        params.require(:rental_item).permit(:family_id, :age, :category, :item_name, :status)

    end 



end
