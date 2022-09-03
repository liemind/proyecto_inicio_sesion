# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Usuario.create(first_name:"Anthony", last_name:"Stark", email_address:"astark@industriasstark.com", age:40)
Usuario.create(first_name:"Pepper", last_name:"Potts", email_address:"ppotts@industriasstark.com", age:29)
Usuario.create(first_name:"Natasha", last_name:"Romanov", email_address:"nromanov@industriasstark.com", age:25)
Usuario.create(first_name:"Steven", last_name:"Rogers", email_address:"captainamerica@industriasstark.com", age:25)

#Verifique si le permite ingresar algunos registro que no cumplan con las reglas de validación que establecimos (ej. trate de crear un registro don la edad sea 5 ó mayor a 150 ó donde el nombre sea solo 1 caracter, etc.).
Usuario.create(first_name:"Haimish", last_name:"Watson", email_address:"hwatson@sherlockholmes.com", age:8)
Usuario.create(first_name:"S", last_name:"Holmes", email_address:"hwatson@sherlockholmes.com", age:15)

#Asegúrate que tu consola devuelva los mensaje de error apropiados cuando intentas guardar un registro que no cumple con las reglas de validación.
Usuario.create!(first_name:"T", last_name:"S", email_address:"", age:9)
#/home/runner/Usuarios/.bundle/ruby/3.0.0/gems/activerecord-7.0.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: First name : El nombre debe contener minimo 2 caracteres, Last name : El apellido debe contener minimo 2 caracteres, Email address can't be blank, Age must be greater than 10, First name is too short (minimum is 2 characters), Last name is too short (minimum is 2 characters) (ActiveRecord::RecordInvalid)
                      

#Consultar todos los usuarios.
Usuario.all

#Consultar el primer usuario.
Usuario.first

#Consultar el último usuario.
Usuario.last

#Consultar todos los usuarios ordenados por el primer nombre (consulte las reglas para ordenar y más
Usuario.order(:first_name)

#Consultar el registro de usuario cuyo id es 3 y cambiar el apellido por otro valor. Haz esto directamente en la consola utilizando .find  y  .save.
u=Usuario.find(3)
u.update(last_name: "Rogers")

#Elimine el registro de usuario cuyo id es 4 (utilice algo como Usuario.find(2).destroy...).
Usuario.find(4).destroy
