# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def request_ip_address
    request.headers['X-FORWARDED-FOR'] || request.remote_ip
  end
end
