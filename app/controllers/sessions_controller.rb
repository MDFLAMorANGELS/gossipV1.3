class SessionsController < ApplicationController
    def new
    end
    def create
                    # Cherche s'il existe un utilisateur en base avec l'e-mail
        user = User.find_by(email: params[:email])

        # Vérifie si l'utilisateur existe et si le mot de passe est correct
        if user && user.authenticate(params[:password])
        # Crée une session pour l'utilisateur
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Session créée avec succès!'
        else
        flash.now[:danger] = 'Combinaison e-mail/mot de passe invalide.'
        render 'new'
        end
    end
    def destroy
        # Détruit la session de l'utilisateur
        session[:user_id] = nil
        redirect_to root_path, notice: 'Déconnexion réussie!'
    end
end
