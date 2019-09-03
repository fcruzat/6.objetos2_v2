# # Ejercicio 6: Arrays y objetos
# # Dado el siguiente código:
# class Student
#     attr_accessor :name
#     def initialize()
#         @name = name
#     end
# end
# nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.
# 3. Agregar un getter para la nota.
# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de
# estudiantes.


class Student
    attr_accessor :name, :grade
    def initialize(name, grade)
        @name = name
        @grade = grade
    end
end
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

arr = []

nombres.each_with_index do |nombre,index|
    arr << Student.new(nombre,index+1)
end

p arr
arr.map {|objetos| puts objetos.grade}