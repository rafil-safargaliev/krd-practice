File.open('students.txt', "r") do |file|
File.open('results.txt', "w") do |result|

loop do
  puts 'Введите возраст студента или введите для выхода -1'
  num = gets.to_i
  break if num == -1

 # перебираем всех студентов в student, разбиваем методом split и записываем в age
 # оттуда по индексу находим нужных студентов и записываем в файл results.txt     
        file.each_line do |student|
               age = student.split(" ")                             
            if age[2].to_i == num
                result.puts student
            end 
        end
      end
    end
end   

  # выводим на экран всех студентов
File.foreach('results.txt') do |line|
    puts line
end