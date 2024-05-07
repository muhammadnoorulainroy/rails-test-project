class DashboardController < ApplicationController
  def new
  end

  def create
    @user = Author.create(authro_params)
    respond_to do |format|
      format.html {redirect_to new_dashboard_index_path}
      format.js
      end
  end
end
