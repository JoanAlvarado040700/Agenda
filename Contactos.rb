class Contact 
    def initialize
        @contact = Hash.new
    end

    def new_contact(name, number)
        @contact.store(name, number)

    end
    def borrar_contact(name)
        @contact.delete(name)
    end
    def buscar_contact(name)
        busqueda = @contact.fetch(name)
        puts "El numero de #{name} es #{busqueda} "
    end
    def agendaComp
        @contact.each do | key, value|
            puts " Numbre: #{key} Numero: #{value}"
        end
    end

end

