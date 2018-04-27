class MocksController < ApplicationController

  def get_path
    url = request.path
    @mock = Mock.where(route_path: params[:path]).last

    if @mock == url
      if @mock.present?
        @respon = @mock.response
        render json: @respon.to_json
      end
    else
      #render error
    end
  end


  #   if @mock
  #     if @mock.present?
  #       respon = @mock.response
  #     else
  #       respon = {}
  #     end
  #   else
  #     respon = {}
  #   end
  #   respond_to do |format|
  #     format.json { render json: respon }
  #   end
  # end

  # def get_route
  #    not_found(ActionController::RoutingError.new("No route matches [#{request.method}] #{request.path}"))
  # end

end
