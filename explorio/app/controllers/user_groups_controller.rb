class UserGroupsController < ApplicationController
before_action :set_group

  def create
    @group.user_groups.create(usergroup_params)
    redirect_to :back
  end

private

  def usergroup_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

  def set_group
    @group = Group.find params[:group_id]
  end

end
