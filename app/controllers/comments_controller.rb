class CommentsController < ApplicationController
  before_filter :load_commentable
  def new
    @comment = @commentable.comments.new
  end
  
  def create
    @comment = @commentable.comments.new(params[:content])
    if @comment.save
      redirect_to @commentable, notice: "Comment created"
    else
      render :new
    end
    
  end
  
  def index
    @comments = @commentable.comments
  end
  
  private
  def comment_params
    params.require(:comment).permit :content, :shops_attributes
  end
  def load_commentable
    klass= [Shop].detect {|c| params["#{c.name.underscore}_id"]}
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end
  
  
end
