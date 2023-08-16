BALANCE = 100.0

def operation

  balance = BALANCE

  if File.exist?('balance.txt')
    file = File.open('balance.txt', 'r') 
    balance = file.read.to_f
    file.close
    puts balance
  else
    puts balance
  end

 loop do 

    puts 'Выберите одну из операций: 
            D - внести деньги
            W - вывести деньги
            B - проверить баланс
            Q - выйти'

    choice = gets.chomp.upcase
    
     # опратором case выбираем один из действий
    case choice
    when 'D'
        puts 'Сколько хотите внести'
        num = gets.to_f
        if num > 0 
        balance += num
        puts "Текущий баланс #{balance}"
        else
        puts 'Ошибка. Сумма должна быть больше 0'
        end

    when 'W'
        puts 'Сколько хотите вывести денег'
        num = gets.to_f
        if num > 0 && num <= balance
        balance -= num
        puts "Текущий баланс #{balance}"
        else
        puts 'Ошибка. Вы не можете снять больше, чем у Вас есть в балансе'    
        end

    when 'B'
        puts "Текущий баланс #{balance}"

    when 'Q'
         break 

    else
        puts 'Вы ввели неправильную букву для операции'            
    end
  end
      # пишем текущий баланс обратно в файл
  file = File.open('balance.txt', 'w')
  file.write balance
end