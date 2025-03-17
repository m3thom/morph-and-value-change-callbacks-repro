class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    # Simulate simple post draft
    @post = Post.first || Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    # Simulate simple post draft
    @post = Post.first || Post.new
    @post.assign_attributes(post_params)
    @post.save
    # respond_to do |format|
    #   format.turbo_stream { turbo_stream.update(:post_form, method: :morph, partial: 'form', locals: { post: @post }) }
    # end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy!

    respond_to do |format|
      format.html { redirect_to posts_path, status: :see_other, notice: "Post was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.expect(post: [ :content ])
    end
end
