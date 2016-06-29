class ReviewsController < ApplicationController
  load_and_authorize_resource except: :show

  def create
    @new_review = current_user.reviews.build review_params
    if @new_review.save
      flash[:success] = t "reviews.messages.create_success"
    else
      flash[:warning] = t "reviews.messages.create_fail"
    end
    redirect_to @new_review.book
  end

  private
  def review_params
    params.require(:review).permit :user_id, :book_id, :content, :rating
  end
end
