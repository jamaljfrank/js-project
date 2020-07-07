class Api::V1::SwfsController < ApplicationController
  def index

    @swfs = Swf.all

    render json: @swfs, status: 200
  end

  def show
    @swf = Swf.find(params[:id])
    render json: @swf, status: 200
  end

  def create
    # Add error statement
    @swf = Swf.create(swf_params)
    render json: @swf, status: 200
  end

  def update
    @swf = Swf.find(params[:id])
    @swf.update(swf_params)
    render json: @swf, status: 200
  end

  def destroy
    @swf = Swf.find(params[:id])
    @swf.delete

    render json: {swfId: @swf.id}
  end

  private
    def swf_params
      params.require(:swf).permit(:filename, :made_by)
    end
end
