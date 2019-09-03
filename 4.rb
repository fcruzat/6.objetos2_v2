# Ejercicio 4: Constructor con argumentos
# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un
# método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
class Dog
    def initialize(hash)
        @llaves = hash.keys
        @valores = hash.values
    end
    def ladrar
        nombre = @valores[0]
        puts "#{nombre} está ladrando!"
    end
end
p1 = Dog.new(propiedades)
p1.ladrar
