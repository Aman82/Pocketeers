class GroupsController < ApplicationController

respond_to :html, :json
  def index
    @groups = Group.all
    respond_with @groups
  end

  def show
    @group = Group.find(params[:id])
    @user_group = UserGroup.new
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(require_params)
    if @group.save
      redirect_to @group
    else
      render new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
      if @group.update_attributes(require_params)
        redirect_to @group
      else
        render 'edit'
      end
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      redirect_to @group
    else
      render @group
    end
  end

  private

  def require_params
    params.require(:group).permit(:name, :location, :start_date, :end_date, :curriculum_id)
  end

end
