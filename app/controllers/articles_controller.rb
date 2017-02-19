class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create 
        
        #render plain: params[:article].inspect
        @article = Article.new(article_params)
        @article.save
        
    end
    
    def show
        
    end
    
    def destroy
        
    end
    
    def update
        
    end
    
    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
    
end

