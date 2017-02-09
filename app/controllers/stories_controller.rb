class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  respond_to :js, :html
  protect_from_forgery except: :new
  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
    @story = Story.new
    logger.info @project_id
    project = Project.find(params[:project_id])
    #redirect_to root_path
    respond_to do |format|
     format.js {render 'new'}
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
    @project = Project.find(params[:project])
    @project_id = @project.id
    logger.info @project_id

    respond_to do |format|
     #format.html {render :partial => 'home/new_story_form', :remote => true }
     format.html {render 'stories/new' }
   end
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    project = Project.find(params[:story][:project_id])
    project.stories.create(story_params)
    #Story.create(story_params)

    redirect_to root_path
=begin
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:project_id, :name, :description, :owner, :todo_hours, :status, :status_indicator, :dependencies)
    end
end
