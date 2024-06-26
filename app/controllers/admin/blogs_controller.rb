class Admin::BlogsController < ApplicationController
  before_action :set_admin_blog, only: %i[ show edit update destroy ]

  # GET /admin/blogs or /admin/blogs.json
  def index
    @admin_blogs = Admin::Blog.all
  end

  # GET /admin/blogs/1 or /admin/blogs/1.json
  def show
  end

  # GET /admin/blogs/new
  def new
    @admin_blog = Admin::Blog.new
  end

  # GET /admin/blogs/1/edit
  def edit
  end

  # POST /admin/blogs or /admin/blogs.json
  def create
    @admin_blog = Admin::Blog.new(admin_blog_params)

    respond_to do |format|
      if @admin_blog.save
        format.html { redirect_to admin_blog_url(@admin_blog), notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @admin_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/blogs/1 or /admin/blogs/1.json
  def update
    respond_to do |format|
      if @admin_blog.update(admin_blog_params)
        format.html { redirect_to admin_blog_url(@admin_blog), notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blogs/1 or /admin/blogs/1.json
  def destroy
    @admin_blog.destroy

    respond_to do |format|
      format.html { redirect_to admin_blogs_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_blog
      @admin_blog = Admin::Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_blog_params
      params.require(:admin_blog).permit(:title)
    end
end
