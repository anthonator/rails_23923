class TestsController < ApplicationController
  def create
    render json: { thanks: 'Rails team!' }
  end
end
