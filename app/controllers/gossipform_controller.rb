class GossipformController < ApplicationController

    def create
        @gossip = Gossip.new('user_id' => User.all.sample.id,
                            'title' => params[:title],
                            'content' => params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire
        if @gossip.save # essaie de sauvegarder en base @gossip
            redirect_to root_path(success: true)# si ça marche, il redirige vers la page d'index du site
        else
            render :new # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        end
        # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
        # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
        # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    end
    
    def index
        @gossips = Gossip.all # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    end
end
