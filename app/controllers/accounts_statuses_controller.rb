class AccountsStatusesController < ApplicationController
    before_action :set_account_status, only: [:show, :update, :destroy]

    # GET /accounts_statuses
    def index
        @accounts_statuses = AccountStatus.all

        render json: @accounts_statuses
    end

    # GET /accounts_statuses/1
    def show
        render json: @account_status
    end

    # POST /accounts_statuses
    def create
        @account_status = AccountStatus.new(account_status_params)

        if @account_status.save
            render json: @account_status, status: :created, location: @account_status
        else
            render json: @account_status.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /accounts_statuses/1
    def update
        if @account_status.update(account_status_params)
            render json: @account_status
        else
            render json: @account_status.errors, status: :unprocessable_entity
        end
    end

    # DELETE /accounts_statuses/1
    def destroy
        @account_status.destroy
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_account_status
            @account_status = AccountStatus.find(params[:id])
        end

        def account_status_params
            params.require(:account_status).permit(:date, :account_id, :reputation, :medal)
        end
end
