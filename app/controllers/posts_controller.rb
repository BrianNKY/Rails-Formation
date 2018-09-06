class PostsController < ApplicationController

  before_action :set_post, only: [:update, :edit, :show, :destroy]
  # Permet d'executer l'action avant les méthodes et éviter qu'on répète le code
  # skip_before_action :verify_authentification_token

  def index
    @posts = Post.all
      respond_to do |format|
        format.html
        format.json { render json: @posts} # Rendre en JSON nos élements @posts
        # format.json { render json: @posts.as_json(only:[:name, :created_at])} # Rendre en JSON nos élements @posts
        format.xml { render xml: @posts} # Rendre en XML
      end
  end

  def show
  end

  def edit
  end

  def update

    if # On test notre formulaire
      @post.update(post_params) # On met à jour
      redirect_to posts_path, success: "Article modifié avec succès" # On redirige
    else # Si les qu'on veut vérifier ne correspondent pas à nos attentes, on le renvoit sur la même page
      render 'edit'
    end

  end

  def new
    @post = Post.new
  end

  def create

    post = Post.create(post_params)
    if post.valid?
      post.save
      redirect_to post_path(post.id), success: "Article créée avec succès"
    else
      @post = post
      render 'new'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
