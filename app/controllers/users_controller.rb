class UsersController < ApplicationController
  
  before_action :set_user, only:[:edit,:update,:show]
  
  def index
    @user = User.paginate(page: params[:page], per_page:2)
  end
  def new
      @user = User.new
  end  
  
  def show
     @user_articles = @user.articles.paginate(page: params[:page], per_page:3)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]  = "Welcome to the blog #{@user.username}"
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
        render "new"  
    end
  end
  def edit
        
  end
    
    def update
      if @user.update(user_params)
        flash[:success] = "Your account was updated"
        redirect_to articles_path
      else
        render 'edit'
      end

    end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)  
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
end