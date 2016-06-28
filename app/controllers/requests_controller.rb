class RequestsController < ApplicationController
  load_and_authorize_resource
  before_action :load_requests, only: [:index]

  def index
  end

  private
  def load_requests
    @requests = (current_user.requests.order created_at: :desc)
      .page(params[:page]).per Settings.admin.books.page
  end
end
