class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update ]  

  # GET /comments
  # GET /comments.json
  def index
    # @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.item = Item.find(params[:item_id])
    @comment.save

    respond_to do |format|
      if @comment.save
        format.html {redirect_back(fallback_location: root_path)}
        # format.html { render notice: 'Comment was successfully created.' }
        # format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to item_path(Item.find(@comment.item_id)) }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    # IN SOME INSTANCES, THE PARAMS DISPLAY AS SO; 
    # /item_id.comment_id
    # IN THOSE CASES, BELOW PARAMS REQUEST NEEDS TO BE; params[:format]
    # IT MAY BE TO DO WITH SEEDING
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to item_path(Item.find(@comment.item_id))

  end

  def flag
    comment = Comment.find(params[:id])
    comment.flagged = true
    comment.save

    redirect_to item_path(comment.item_id)
  end

  def unflag
    comment = Comment.find(params[:id])
    comment.flagged = false
    comment.save

    redirect_to admin_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:description, :item_id) 
    end
end
