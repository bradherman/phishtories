class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      redirect_to stories_path
    else
      flash.alert = t('.alert')
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(
      :body, :title, :author, :author_location,
      :author_email, :venue, :location, :date
    )
  end
end
