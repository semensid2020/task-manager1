class Admin::UsersController < Admin::ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(:type).order(:id).page(params[:page]).per(params[:per_page])
  end

  def show
    @user = User.find(params[:id])
  end
end
