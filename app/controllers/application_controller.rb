class ApplicationController < ActionController::Base

  def after_sign_out_path_for(resource)
    tweets_path
  end

  def after_sign_in_path_for(resource)
    tweets_path
  end

end
