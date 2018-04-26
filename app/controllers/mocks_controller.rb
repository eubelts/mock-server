class MocksController < ApplicationController

  def get_path
    url = request.path
    @mock = Mock.where(route_path: params[:path]).last

    if @mock
      if @mock.present?
        respon = @mock.response
      else
        respon = {}
      end
    else
      respon = {}
    end
    respond_to do |format|
      format.json { render json: respon }
    end
  end

end
