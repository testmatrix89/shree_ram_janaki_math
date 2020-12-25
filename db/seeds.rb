# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.delete_all
AdminUser.create!(email: 'testmatrix89@gmail.com', password: 'matrix', password_confirmation: 'matrix') # if Rails.env.development?

dev_sthan = [
  { sthan_name: "श्री राम परिवार मंदिर", sthan_image: 'sm-ram-parivar.jpg', sthan_description: 'श्री राम परिवार मंदिर', label: 'shree_ram_parivar' },
  { sthan_name: "शिव परिवार", sthan_image: '', sthan_description: 'शिव परिवार', label: 'shree-shiv-parivar' },
  { sthan_name: "श्री ठरेश्रीबाबा जी का स्थान", sthan_image: '', sthan_description: 'श्री ठरेश्रीबाबा जी का स्थान', label: 'shree-thareshee-baba' },
  { sthan_name: "श्री हनुमान जी का स्थान", sthan_image: 'shree-hanuman-ji-home.jpg', sthan_description: 'श्री हनुमान जी का स्थान', label: 'shree-hanuman-ji' },
  { sthan_name: "श्री कलिका माता जी का स्थान", sthan_image: '', sthan_description: 'श्री कलिका माता जी का स्थान', label: 'kalika-mata' },
  { sthan_name: "अष्टयाम बंगला", sthan_image: '', sthan_description: 'अष्टयाम बंगला', label: 'ashtyam-bangala' },
  { sthan_name: "मठ के समिप सरोवर", sthan_image: '', sthan_description: 'मठ के समिप सरोवर ', label: 'sarovar' },
  { sthan_name: "गौशाला", sthan_image: '', sthan_description: 'गौशाला', label: 'gaushala' }
]

math_programs = [
      { program_name: "श्री राम परिवार मंदिर", program_date: '', program_place: 'कल्याणपुर मठ', program_activity: 'रामलीला', program_description: 'श्री राम परिवार मंदिर' },
      { program_name: "तुलसी पूजन दिवस महोत्सव", program_date: '', program_place: 'कल्याणपुर मठ', program_activity: 'रामलीला', program_description: 'तुलसी पूजन दिवस महोत्सव' },
    ]

DevSthan.delete_all
dev_sthan.each do |sthan|
  DevSthan.create!({"sthan_name" => sthan[:sthan_name] , "sthan_image" => [], "sthan_description" => sthan[:sthan_description], "label" => sthan[:label]})
end

Program.delete_all
math_programs.each do |program|
  Program.create!({"program_name" => program[:program_name] , "program_date" => '', "program_place" => program[:program_place], "program_activity" => program[:program_activity], "program_description" => program[:program_description]})
end
