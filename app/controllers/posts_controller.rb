class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create

    #start with a new post
    @post = Post.new

    #assign user-entered form data to Post's columns
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["image"] = params["post"]["image"]

    #save
    @post.save

    #redirect user
    redirect_to "/posts"
  end

end
