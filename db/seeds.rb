# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
enem_2013 = Exam.create(name: "Enem", year: 2013 )
enem_2012 = Exam.create(name: "Enem", year: 2012 )
enem_2011 = Exam.create(name: "Enem", year: 2011 )
enem_2010 = Exam.create(name: "Enem", year: 2010 )
enem_2009 = Exam.create(name: "Enem", year: 2009 )


humanas = Subject.create(name: "CIÊNCIAS HUMANAS E SUAS TECNOLOGIAS")
natureza = Subject.create(name: "CIÊNCIAS DA NATUREZA E SUAS TECNOLOGIAS")
linguagens = Subject.create(name: "LINGUAGENS, CÓDIGOS E SUAS TECNOLOGIAS")
matematica = Subject.create(name: "MATEMÁTICA E SUAS TECNOLOGIAS")
