class CommentsController < ApplicationController
    def comment_params
        return params.require(:comment).permit(:name, :body)
    end

    def create
        @job = Job.find(params[:job_id])
        @comment = @job.comments.build(comment_params)
        if @comment.save
            flash[:notice] = "Comentário adicionado com sucesso!"
        else
            flash[:alert] = "Preencha todos os campos!"
        end
        redirect_to @job
    end   
    
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        #flash[:notice] = "Comment destroyed with sucess!"   
        #redirect_to @comment.job
        redirect_to @comment.job, notice: "Comment destroyed with success."
    end
end