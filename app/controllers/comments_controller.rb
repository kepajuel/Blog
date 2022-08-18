class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post

    def create
        @comment = @post.comments.create(comment_params)
        @comment.User = current_user

       if @comment.save
        flash[:notice] = "El comentario ha sido creado"
        redirect_to post_path(@post)
        
       else
        flash[:alert] = "El comentario no ha sido creado"
        redirec_to post_path(@post)
       end
    end

    def destroy
        @comment = post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

    private 

    def set_post
        @post = Post.find(params[:post_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end 
