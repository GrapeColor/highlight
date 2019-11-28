class UsersController < ApplicationController
  def show
    redirect_to controller: :articles, action: :index if params[:id].to_i != current_user.id
    @page_title = "Highlight.user"
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to current_user, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: current_user }
      else
        format.html { render :edit }
        format.json { render json: current_user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end
