class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/show'
  end

  post '/figures' do
    figure = Figure.create(params[:figure])
    unless params[:title][:name].empty?
      figure.titles.create(params[:title])
    end
    unless params[:landmark][:name].empty?
      figure.landmarks.create(params[:landmark])
    end

    redirect "/figures/#{figure.id}"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    figure = Figure.find_by_id(params[:id])
    figure.update(params[:figure])
    unless params[:title][:name].empty?
      figure.titles.create(params[:title])
    end
    unless params[:landmark][:name].empty?
      figure.landmarks.create(params[:landmark])
    end
    redirect "/figures/#{figure.id}"
  end

end
