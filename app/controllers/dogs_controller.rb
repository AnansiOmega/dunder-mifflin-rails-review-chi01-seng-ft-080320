class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def new
        @dog = Dog.find(params[:id])
    end

    def create

    end

    def update

    end

    def edit

    end

    def destroy

    end

    private

    def dog_params

    end

end
