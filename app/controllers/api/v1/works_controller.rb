# frozen_string_literal: true

module Api::V1
  class WorksController < ApiController
    skip_before_action :verify_authenticity_token
    before_action :set_work, only: [:show, :update, :destroy]

    def create
      @work = Work.new(work_params)

      if @work.save
        render json: @work, message: { type: "success", cnt: "创建成功" }
      else
        render json: @work, status: :unprocessable_entity
      end
    end

    private
      def set_work
        @work = Work.find(params[:id])
      end

      def work_params
        params.require(:work).permit(images: [])
      end
  end
end
