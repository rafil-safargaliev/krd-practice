# Написать скрипт, который будет выводить массив покемонов
# Спросит сколько добавить покемонов
# Указанное на предыдущем этапе число раз спросит имя и цвет каждого покемона
# Выведет в консоль массив содержащий хеши покемонов в формате
# [{ name: ‘Pikachu’, color: ‘Yellow’ }, … n times{}]

def pokemon 

    puts 'Сколько добавить покемонов?'
    count = gets.to_i

    # Создаём пустой массив
    pokemons = []
    
    count.times do 
        puts 'Укажите имя покемона'
        name = gets.chomp.capitalize
        puts 'Укажите цвет покемона'
        color = gets.chomp.capitalize
        
        pokemons << [name: name, color: color]
    end

   # Выводим получившийся массив
    pokemons
end

puts pokemon
