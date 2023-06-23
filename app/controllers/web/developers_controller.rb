class Web::DevelopersController < Web::ApplicationController
  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      sign_in @developer
      redirect_to :board
    else
      render :new
    end
  end

  private

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
