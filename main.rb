require "./Contactos.rb"

class ListContact
    def initialize
        @agent = Contact.new
    end

    def run
        loop do
            puts " \na - Agregar un nuevo numero"
            puts "r - Borrar numero"
            puts "v - Mostrar egenda"
            puts "b - Buscar numero"
            puts "s - Salir de la lista"

            opc = gets.chomp

            case opc
                when "a" 
                    puts "Ingrese un nombre: "
                    name = gets.chomp
                    puts "Ingrese el numero para #{name}: "
                    number = gets.chomp.to_i
                    @agent.new_contact(name, number)
                
                when "r"
                    puts "Cual es el numero que desea borrar? "
                    name = gets.chomp
                    @agent.borrar_contact(name)
                when "b"
                    puts "Cual es el numero que desea buscar ?"
                    name = gets.chomp
                    @agent.buscar_contact(name)
                when "s"
                    break
                when "v"
                    @agent.agendaComp
                else
                    "Opcion no valida"
                
            end
        end
        
    end

end



agenda = ListContact.new

agenda.run