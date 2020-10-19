#require 'pry'

class View

    #attr_accessor :auth, :cont, 
    #:params

    def initialize
        
    end

    def create_gossip
        puts "entrez le nom de l'auteur :"
        auth = gets.chomp
        puts "entrez votre gossip :"
        cont = gets.chomp
        return params = { content: cont, author: auth } #Bien entendu, tu aurais pu enlever params = ce qui aurait donné exactement le même résultat (une méthode retourne le contenu d'une variable, pas son nom)
    end
    
    def index_all_gossips(readata)
        gossips_array = []
        readata.each do |line|
            gossip_provisoire = line
            all_gossips << gossip_provisoire
        end
        return all_gossips
    end

end

