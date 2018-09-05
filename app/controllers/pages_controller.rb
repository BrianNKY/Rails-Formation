class PagesController < ApplicationController

    def home # Controller de la homepage
    end

    def salut # Controller de la page salut
        @name = params[:name]
    end
    

end