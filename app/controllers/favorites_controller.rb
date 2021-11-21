class FavoritesController < ApplicationController
    def create
        favorite = current_user.favorites.create(publication_id: params[:publication_id])
        redirect_to publication_path(favorite.publication), notice: "#{favorite.publication.user.name}'S Publication has been added to favorites"
    end
    def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to publication_path(favorite.publication), notice: "#{favorite.publication.user.name}Publication is removed from favovies"
    end
end
