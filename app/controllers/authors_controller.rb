class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    #@author = Author.new
  end

  def create
    #@author = Author.create!(author_params)
    #the above line was throwing error beacuse create itself will perform save. 
    #but we want our database to save only if valid.
    #so using new in below statement
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
       "Email has already been taken, Name can't be blank"
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
