require 'controller'

class Router

    def initialize
        @controller = Controller.new 
    end

    def perform

        puts "BIENVENUE DANS THE GOSSIP PROJECT"

        while true
            puts "Tu veux faire quoi jeune mouss' ?"
            puts "1. Je veux créer un gossip"
            puts "2 Afficher tous les gossips"
            puts "4. Je veux quitter l'app"
            params = gets.chomp.to_i

            case params
            when 1
                puts "Tu as choisi de créer un gossip" 
                @controller.create_gossip
            when 2
                puts "Tu as choisi de voir tous les potins"
                @controller.index_gossips
            when 4
                puts "À bientôt !"
                break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
            else
                puts "Ce choix n'existe pas, merci de ressayer"
            end 
        end
    end
end

   
