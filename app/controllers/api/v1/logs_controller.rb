class Api::V1::LogsController < ApplicationController
  before_action :set_log, only: [:show, :update, :destroy]

  def index
    @logs = Log.all
    render json: @logs
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      render json: @log
    else
      render json: @log.errors
    end
  end

  def show
    render json: @log
  end

  def update
    if @log.update(log_params)
      render json: @log
    else
      render json: @log.errors
    end
  end

  def destroy
    @logs = Log.all
    @log.destroy
    render json: @logs
  end

  private

  def set_log
    @log = Log.find(params[:id])
  end

  def log_params
    params.permit(:goal_id, :date, :binary_input, :amount_input)
  end

end
