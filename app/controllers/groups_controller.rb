class GroupsController < ApplicationController
  def index
    @groups = Group.all # Add code to retrieve and prepare data for your index view
  end

  # Other controller actions (e.g., new, create, show, edit, update, destroy)
end
