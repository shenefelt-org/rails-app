require 'tty'
require 'tty-prompt'
require 'tty-progressbar'
require 'pastel'
module TechnicansHelper

    def self.display_technicans()
        
        technicans = Technican.all

        if technicans.nil?
            puts "No technicans found."
            return false
        end

        technicans.each do |technican|
            puts "ID: #{technican.id} | Name: #{technican.name} | Created At: #{technican.created_at.strftime("%Y-%m-%d %H:%M:%S")}"
        end

        true
    end

end
