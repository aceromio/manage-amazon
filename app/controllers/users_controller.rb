class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @orders = @user.orders.order(created_at: :desc)
    #@order = Order.find(params[:id])
  end
  def edit
   @user = User.find(params[:id])
    unless current_user == @user
    redirect_to root_path, notice: 'loginし直してください'
    end
  end
  def update
    @user = User.find(params[:id])
    unless current_user == @user
    redirect_to root_path, notice: 'loginし直してください'
    end
    if @user.update(user_params)
      redirect_to root_path , notice: '基本情報を編集しました'
    else
      render 'edit'
    end
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the Rich World!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,:email,:prefecture,:phone,
                                 :password_confirmation)
  end
end
