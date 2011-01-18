class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # Over-ride the sign_out redirect path method.
  def after_sign_out_path_for(resource_or_scope)
    home_index_path
  end
end
# Copyright (c) 2010 Christopher Dunn.
