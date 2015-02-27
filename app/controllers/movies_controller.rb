#This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	
def new
	# default: render 'new' template
end

def show
	id = params[:id] #retrieve movie from URI route
	@movie = Movie.find(id) #look up movie by unique ID
	#will render app/views/movies/show.html.haml
end

def edit
	@movie = Movie.find params[:id]
end

def update
	@movie = Movie.find params[:id]
	@movie.update_attributes!(params[:movie])
	flash[:notice] = "#{movie.title} was successfully created."
	redirect_to movie_path(@movie)
end

def destroy
	@movie = Movie.find(params[:id])
	@movie.destroy
	flash[:notice] = "Movie '#{@movie.title}' deleted."
	redirect_to movies_path
end
	
	
def create
	debugger
	@movies = Movie.create!(params[:movie])
	flash[:notice] = "#{@movie.title} was successfully created."
	redirect_to movies_path
end
end
