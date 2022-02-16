class ApplicationController < ActionController::Base

  def send_to_url
    link = Link.where(user_url_code: params[:id].upcase).first
    if link.present?
      redirect_to link.user_url and return
    else
      redirect_to session.delete(:referrer)
    end
  end
end
