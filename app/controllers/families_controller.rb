class FamiliesController < ApplicationController

    def index
        @families = Family.all 
        render json: @families 

    end 


    def create 
        @family = Family.new(family_params)
        if @family.save 
            render json: @family
        else 
            render json: {error: 'Error creating family'}
        end 
    end 


    def show 
        @family = Family.find(params[:id])
        render json: @family

    end 

    def destroy 
        @family = Family.find(params[:id])
        family.destroy 
    end


    private 

    def family_params
        params.require(:family).permit(:name, :location, :contact_number)

    end 

end
