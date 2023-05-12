class UsersController < ApplicationController
    def new
    end
    def create
        user = User.new(first_name: params["user_first_name"],last_name: params["user_last_name"],age: params["user_age"].to_s,email: params["user_email"],password: params["user_password"])
        if user.save
        # L'utilisateur a été créé avec succès
        redirect_to root_path, notice: "Inscription réussie !"
        else
        # Afficher le formulaire à nouveau avec les erreurs de validation
        render :new
        end
    end

end

