class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # rescue_from ActiveRecord::RecordNotFound, :with => :not_found
  #
  # def not_found(exception)
  #   respond_to do |format|
  #     format.json { render :json => {:error => exception.message}, :status => :not_found }
  #     format.any { render :text => "Error: #{exception.message}", :status => :not_found }
  #   end
  # end

end
