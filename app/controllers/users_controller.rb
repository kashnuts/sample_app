class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new(params[:user])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save #@userをsaveできたらtrue
  		flash[:success] = "Welcome to the Sample App!" #flash表示
  		redirect_to @user #@userページにリダイレクト
  	else #保存できなければ
  		render 'new' #newメソッドを実行して戻る
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
