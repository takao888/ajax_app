class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")#新しいメモが一番上に表示される並び順
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
