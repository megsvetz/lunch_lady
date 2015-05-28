class Lunchlady


    @@main_dishes = {"Street Taco" => 1.50,
                   "Burrito" => 4.00,
                   "Nachos" => 3.00,
                   "Huge Burrito" => 6.00,
                   "Super Nachos" => 5.00,
                   "Quesadilla" => 3.50
                  }

    @@sides = {"Chips" => 1.50,
             "Guac " => 1.00,
             "Beans" => 1.50,
             "Rice " => 1.50,
             "Weird soup" => 2.00,
             "Salad" => 2.50
           }

  def pick_a_main_dish
    puts "Hola, bienvenido a delicious palacio alimentos!"
    puts "¿Qué te gustaría para su plato principal?"

    z = 1
    @@main_dishes.each do |x, y|
      puts "#{z}. #{x}\t\t$#{sprintf('%.2f', y)}"
      z+=1

    end
    print "Por favor, elija el número de plato: "
    @main_dish_choice = gets.chomp.to_i
  end

  def pick_a_side_dish
    puts "¿Qué te gustaría para tu plato?"

    z = 1
    @@sides.each do |x, y|
      puts "#{z}. #{x}\t\t$#{sprintf('%.2f', y)}"
      z+=1

    end
    print "Por favor, elija el número de plato: "
    @side_dish_choice = gets.chomp.to_i
    puts "¿Qué te gustaría para tu segundo plato?"
    @side_dish_choice_two = gets.chomp.to_i
  end

end

l = Lunchlady.new
l.pick_a_main_dish
l.pick_a_side_dish

