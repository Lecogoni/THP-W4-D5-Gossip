require 'pry'
require 'json'
require 'csv'

class Gossip

    attr_reader :gossip_array,:author, :content

    def initialize(author, content)
        @content = content #marche si masqué
        @author = author #marche si masqué
        #@gossip_hash = {'author' => @author, 'content' => @content}
        @gossip_array = [author, content]
    end

    def save_as_JSON
        File.open("db/gossip.json", "a+") do |f|
        f.write(JSON.pretty_generate(gossip_array))
        end   
    end

    def save_as_CSV
        CSV.open("db/gossip.csv", "a+") do |csv|
        csv << gossip_array
        end
    end

end


    