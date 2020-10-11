class RentalItemsController < ApplicationController
    
    def index
        if params[:family_id]
        set_family  
        else
        @rental_items = RentalItem.all 
        end 
        render json: @rental_items  

    end 


    def create 
        set_family
        @rental_item = @family.rental_items.build(rental_item_params)
        if @rental_item.save 
            render json: @family
        else 
            render json: {error: 'Error creating rental item'}
        end 
    end 


    def show 
        set_family
        @rental_item = @family.rental_items.find_by(id: params[:id])
        render json: @rental_item 

    end 

    def update
        binding.pry 
        @rental_item = RentalItem.find(params[:id])
        @rental_item.update(status: params["rental"])
    end 

    def destroy 
        @rental_item = RentalItem.find(params[:id])
        @family = Family.find(@rental_item.family_id)
        @rental_item.destroy 
        render json: @family 
    end


    private 

    def set_family
        @family = Family.find(params[:family_id])
    end 

    def rental_item_params
        params.require(:rental_item).permit(:family_id, :age, :category, :item_name, :status)

    end 



end
