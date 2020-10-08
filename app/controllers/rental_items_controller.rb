class RentalItemsController < ApplicationController
    before_action :set_family
    def index

        @rental_items = @family.rental_items  
        render json: @rental_items  

    end 


    def create 
        @rental_item = @family.rental_items.build(rental_item_params)
        if @rental_item.save 
            render json: @rental_item
        else 
            render json: {error: 'Error creating rental item'}
        end 
    end 


    def show 
        @rental_item = @family.rental_items.find_by(id: params[:id])
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
