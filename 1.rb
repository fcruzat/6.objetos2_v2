# Ejercicio 1: Sintaxis
# Copia el siguiente código y ejecútalo. Luego corrige los errores para poder ejecutar ambos
# métodos y finalmente obtener el valor de la variable de a.
class Anything
    def foo
        @a = 5
    end
    def bar
        @a += 1
    end
end
any = Anything.new
puts any.foo
puts any.bar