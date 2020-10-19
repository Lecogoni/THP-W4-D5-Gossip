require 'view'
require 'gossip'
require 'pry'

class Controller

    def initialize
        @view = View.new
    end

    def create_gossip
        params = @view.create_gossip
        gossip = Gossip.new(params[:author], params[:content])
        gossip.save_as_JSON
        gossip.save_as_CSV
    end

    def index_gossips
        file = File.open("db/gossip.csv", "r")
        puts "Voici le contenu de ton Gemfile :" 
        provi = []
        file.each do |authra|
            prov = authra
            provi << prov
        end
        puts provi
        puts ""
        file = File.open("db/gossip.json", "r")
        puts "Voici le contenu de ton Gemfile :" 
        prova = []
        file.each do |authora|
            prov = authora
            prova << prov
        end
        puts prova
    

        #binding.pry        
        # readata = CSV.read("db/gossip.csv").split
        # #puts readata

    end
end

