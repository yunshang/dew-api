# frozen_string_literal: true

module Api::V1
  class ApiController < ApplicationController
    protect_from_forgery perpend: true, with: :exception
    def render_err_msg(err_msg, options = { status: :unprocessable_entity })
      render(json: { success: true, message: {}, result: {}, errors: err_msg }, status: options[:status]) && (return)
    end
  end
end
