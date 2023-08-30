class CashMachine

    def initialize 

        if File.exist?('balance.txt')
            file = File.open('balance.txt', 'r') 
            balance = file.read.to_f
            @balance = balance
            file.close
        else
            file = File.open('balance.txt', 'w')
            file.write(100.0)
            balance = File.read('balance.txt').to_f
            @balance = balance
        end
    end
    def deposit
        puts 'Сколько хотите внести'
        num = gets.to_f
        if num > 0 
            @balance += num
            puts "Текущий баланс #{@balance}"
            puts
        else
            puts 'Ошибка. Сумма должна быть больше 0'
        end
    end

    def withdraw
        puts 'Сколько хотите вывести денег'
        num = gets.to_f
        if num > 0 && num <= @balance
            @balance -= num
            puts "Текущий баланс #{@balance}"
            puts
        else
            puts 'Ошибка. Вы не можете снять больше, чем у Вас есть в балансе'    
        end
    end

    def balance
        puts "Текущий баланс #{@balance}"
        puts
    end           
 
        def init
            loop do
                puts 'Выберите одну из операций: 
                D - внести деньги
                W - вывести деньги
                B - проверить баланс
                Q - выйти'

                choice = gets.chomp.upcase
                case choice
                when 'D'
                    deposit
                when 'W'
                    withdraw
                when 'B'
                    balance
                when 'Q'
                    break
                else
                    puts 'Вы ввели неправильную букву для операции'                  
            end 
            file = File.open('balance.txt', 'w')
            file.write @balance
            file.close
        end           
    end  
end  
CashMachine.new.init