# Ejercicio 7: Mascota Virtual
# Vamos a generar una mascota virtual y interactuaremos con ella.Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota con los
# siguientes parametros:
# def initialize name
#     @name = name
#     @sleep = false
#     @satisfied = 10 # Esta lleno
#     @fullIntestine = 0 # No necesita ir
#     puts @name + ' nace '
# end
# Crea un método para hacer caminar a tu mascota e ir al baño, puedes seguir este ejemplo:
# def walk
#     puts 'Haces caminar a ' + @name + '.'
#     @satisfied -= 2
#     @fullIntestine = 2
#     timeLapse
# end
# Prueba el siguiente Método para hacer pasar el tiempo:
# def timeLapse
#     if @satisfied > 0
#         # Mueve el alimento del estomago al intestino.
#         @satisfied
#         = @satisfied
#         - 1
#         @fullIntestine = @fullIntestine + 1
#     else # Nuestro mascota esta hambrienta!
#         if @sleep
#             @sleep = false
#             puts '¡Se despierta de repente!'
#         end
#         puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
#         exit # Sale del programa.
#     end
#     if @fullIntestine >= 10
#         @fullIntestine = 0
#         puts '¡Uy! ' + @name + ' tuvo un accidente...'
#     end
#     if hungry?
#         if @sleep
#             @sleep = false
#             puts '¡Se despierta de repente!'
#         end
#         puts 'El estomago de ' + @name + 'retumba...'
#     end
#     if needToGo?
#         if @sleep
#             @sleep = false
#             puts 'Se despierta de repente!'
#             endputs @name + ' hace la danza del baño...'
#         end
#     end

# Genera el método comer considerando que llenara su panza y pasara el tiempo.
# Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
# Generar un menu para interactuar con tu mascota (alimentarlo, hacerlo dormir, salir a
# caminar) debes poder iterar las opciones, hasta que, Si la mascota muere de hambre
# debe terminar el programa.

class MyPet
    def initialize(name)
        @name = name
        @sleep = false
        @satisfied = 10 # Esta lleno
        @fullIntestine = 0 # No necesita ir
        puts @name + ' nace '
        puts "Su nombre es #{@name},
        Status de sueño: #{@sleep = "Despierto" if @sleep == false},
        Satisfacción: #{@satisfied},
        Intestino: #{@fullIntestine}"
    end
    def walk
        puts 'Haces caminar a ' + @name + ' para ir al baño.'
        @satisfied -= 2
        @fullIntestine -= 2
        puts "Status de sueño: #{@sleep},
        Satisfacción: #{@satisfied},
        Intestino: #{@fullIntestine}"
        timeLapse
    end
    
    def eat
        puts 'Alimentas a ' + @name + '.'
        @satisfied += 2
        @fullIntestine += 2
        puts "Status de sueño: #{@sleep},
        Satisfacción: #{@satisfied},
        Intestino: #{@fullIntestine}"
        timeLapse
    end
    
    def sleep
        puts 'Haces dormir a ' + @name + '.'
        @sleep = true
        puts "Status de sueño: #{@sleep = "Durmiendo" if @sleep == true},
        Satisfacción: #{@satisfied},
        Intestino: #{@fullIntestine}"
        timeLapse
    end
    
    
    def timeLapse
        if @satisfied > 0
            # Mueve el alimento del estomago al intestino.
            @satisfied = @satisfied - 1
            @fullIntestine = @fullIntestine + 1
        else # Nuestro mascota esta hambrienta!
            if @sleep
                @sleep = false
                puts '¡Se despierta de repente!'
            end
            puts '¡' + @name + ' está hambriento! En su desesperación, ¡Murió de Hambre!'
            exit # Sale del programa.
        end
        if @fullIntestine > 10
            @fullIntestine = 0
            puts '¡Uy! ' + @name + ' tuvo un accidente...'
        end
        if @satisfied == 2
            if @sleep
                @sleep = false
                puts '¡Se despierta de repente!'
            end
            puts 'El estomago de ' + @name + ' retumba...'
        end
        if @fullIntestine == 8 
            if @sleep
                @sleep = false
                puts 'Se despierta de repente!'
            end
            puts @name + ' hace la danza del baño...'
        end
    end
end   

puts "Bienvenido a Mascota Virtual!!! Aquí puedes jugar con tu mascota ingresando las opciones del menú.
Menú:
1. Crear nueva mascota.
2. Salir del juego.
Ingresa el número que quieras para comenzar a jugar"

menu_num = 0
while menu_num != 2
    menu_num = (gets.chomp).to_i
    if menu_num == 1
        puts "Escribe el nombre que quieres que tenga tu nueva mascota:"
        nombre_mascota = gets.chomp
        mascota = MyPet.new(nombre_mascota)
        puts "¿Qué deseas hacer ahora? Ingresa el número que quieras para comenzar:
        1. Alimentar a mi mascota.
        2. Hora de dormir de mi mascota.
        3. Salir a caminar con mi mascota y llevarla al baño.
        4. Salir del juego."
        menu_num2 = 0
        
        while menu_num2 != 4
            menu_num2 = (gets.chomp).to_i
            if menu_num2 == 1
                mascota.eat
            elsif menu_num2 == 2
                mascota.sleep
            elsif menu_num2 == 3
                mascota.walk
            elsif menu_num2 == 4
                puts "Escribe 2 para salir, o 1 si deseas crear una nueva mascota"
            else
                puts "Número incorrecto"
            end
        end
    elsif menu_num == 2
        puts "Adiós!!"
    else
        puts "Número incorrecto"
    end
end
