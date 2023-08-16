def index  # выводит все строки
    f = File.open("artists.txt")
    f.each do |line|
        puts line
    end
end

def find(id) # находит конкретную строку в файле и выводит её 
    f = File.open("artists.txt")
    f.each_with_index do |line, i|
            if id == i + 1
                puts line
            end
        end
end

def where(pattern) # находит все строки, где есть указанный паттерн
    f = File.open("artists.txt")
    f.each do |line|
            if line.include?(pattern)
                puts line
            end
        end   
end

def update(id, text) # обновляет конкретную строку файла
  file = File.open("buffer.txt","w")
  File.foreach("artists.txt").with_index do |actor, index|
      file.puts(id.to_i - 1 == index ? text : actor)
  end
  file.close
  File.rename("buffer.txt", "artists.txt")
end

def delete(id) # удаляет строку
    f = File.readlines('artists.txt')
    f.delete_at(id.to_i - 1)
    file = File.open('artists.txt', "w")
    file.puts f
end

def create(name) # добавляет строку в конец файла
    file = File.open("artists.txt", "a")
    file.puts name
end

def main
    puts 'Выводим весь список'
    puts
  index

    puts 
    puts 'Введите номер актёра'
    id = gets.to_i
    puts
  find(id)

    puts 
    puts 'Введите имя актёра'
    pattern = gets.chomp
    puts 
  where(pattern)

    puts
    puts 'Сначало укажите номер кого хотите поменять. Потом введите "имя и фамилию" на кого поменять'
    id, text = gets.chomp
    puts
  update(id, text)

    puts 
    puts 'Укажите номер кого удалить'
    id = gets.chomp.to_i
    puts 
  delete(id)

    puts 'Введите имя и фамилию чтобы добавить'
    puts
    name = gets.to_s
  create(name)
end
   main