def greeting

    puts "Введите своё имя"
    first_name = gets.chomp

    puts "Введите свою фамилию"
    last_name = gets.chomp

    puts "Введите свой возраст"
    age = gets.chomp.to_i

    if age < 18 
        puts "Привет, #{first_name} #{last_name}. Тебе меньше 18 лет, но начать " +
      "учиться программировать никогда не рано"
    else
        puts "Привет, #{first_name} #{last_name}. Самое время заняться делом!"
    end
end        

greeting
