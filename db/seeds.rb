# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: 'David', age: '28', level: 'C2', score: '0', progress: '0')
Student.create(name: 'Félix', age: '44', level: 'B1', score: '0', progress: '0')
Student.create(name: 'Andy', age: '16', level: 'A2', score: '0', progress: '0')

Answer.create(name: 'Félix', title: 'Readings', text:'Can you recommend a good novel?')
Answer.create(name: 'Andy', title: 'Radio', text:"What's the dial for Vaughan Radio?")
Answer.create(name: 'Liz', title: 'Speaking', text:"Is there a good place to keep improving my speaking?")