class AccountsController < ApplicationController
    before_action :set_account, only: [:show, :update, :destroy]

    # GET /accounts
    def index
        @accounts = Account.all

        render json: @accounts
    end

    # GET /accounts/1
    def show
        render json: @account
    end

    # GET /accounts/consultant_accounts
    def consultant_accounts
        @accounts = current_user.accounts
        render json: @accounts
    end

    # POST /accounts
    def create
        @account = Account.new(account_params)

        if @account.save
            render json: @account, status: :created, location: @account
        else
            render json: @account.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /accounts/1
    def update
        if @account.update(account_params)
            render json: @account
        else
            render json: @account.errors, status: :unprocessable_entity
        end
    end

    # DELETE /accounts/1
    def destroy
        @account.destroy
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_account
            @account = Account.find(params[:id])
        end

        def account_params
            params.require(:account).permit(:mercadolibre_id, :customer_id)
        end
end
