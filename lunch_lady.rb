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
             "Soup " => 2.00,
             "Salad" => 2.50
           }

  def pick_a_main_dish
    puts ""
    puts "Hola, bienvenido a delicious palacio alimentos!"
    sleep 1
    puts ""
    puts "¿Qué te gustaría para su plato principal?"
    puts ""
    sleep 1

    z = 1
    @@main_dishes.each do |x, y|
      puts "#{z}. #{x}\t\t$#{sprintf('%.2f', y)}"
      z+=1

    end
    puts ""
    sleep 1
    print "Por favor, elija el número de plato: "
    @main_dish_choice = gets.chomp.to_i
    @main_dish_choice -= 1
  end

  def pick_a_side_dish
    puts ""
    sleep 1
    puts "¿Qué te gustaría para tu plato?"
    sleep 1
    puts ""

    z = 1
    @@sides.each do |x, y|
      puts "#{z}. #{x}\t\t$#{sprintf('%.2f', y)}"
      z+=1

    end
    puts ""
    print "Por favor, elija el número de plato: "
    @side_dish_choice = gets.chomp.to_i
    @side_dish_choice -= 1 
    sleep 1
    puts ""
    print "¿Qué te gustaría para tu segundo plato?: "
    @side_dish_choice_two = gets.chomp.to_i
    @side_dish_choice_two -= 1
  end

  def ring_up_order
    puts ""
    sleep 1
    puts "Gracias por venir!"
    sleep 1
    puts "Aquí está su cuenta:"
    sleep 1
    puts ""
    puts "#{@@main_dishes.keys[@main_dish_choice]}\t\t$#{sprintf('%.2f',@@main_dishes.values[@main_dish_choice])} "
    puts "#{@@sides.keys[@side_dish_choice]}\t\t$#{sprintf('%.2f',@@sides.values[@side_dish_choice])}"
    puts "#{@@sides.keys[@side_dish_choice_two]}\t\t$#{sprintf('%.2f',@@sides.values[@side_dish_choice_two])}"
    puts "-"*22
    print "Total\t\t"
    puts "$#{sprintf('%.2f',@@main_dishes.values[@main_dish_choice] + @@sides.values[@side_dish_choice] + @@sides.values[@side_dish_choice_two])}"
    puts ""
  end

end

l = Lunchlady.new
l.pick_a_main_dish
l.pick_a_side_dish
l.ring_up_order

