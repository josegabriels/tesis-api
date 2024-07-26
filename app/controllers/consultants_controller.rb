class ConsultantsController < ApplicationController
    before_action :set_consultant, only: [:show, :update, :destroy]

    # GET /consultants
    def index
        @consultants = Consultant.all

        render json: @consultants
    end

    # GET /consultants/1
    def show
        render json: @consultant
    end

    # POST /consultants
    def create
        @consultant = Consultant.new(consultant_params)

        if @consultant.save
            render json: @consultant, status: :created, location: @consultant
        else
            render json: @consultant.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /consultants/1
    def update
        if @consultant.update(consultant_params)
            render json: @consultant
        else
            render json: @consultant.errors, status: :unprocessable_entity
        end
    end

    # DELETE /consultants/1
    def destroy
        @consultant.destroy
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_consultant
            @consultant = Consultant.find(params[:id])
        end

        def consultant_params
            params.require(:consultant).permit(:username, :password)
        end
end
