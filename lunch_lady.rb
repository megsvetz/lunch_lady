class Lunchlady

  def menu
    @main_dishes = {"Taco" => 1.50,
                   "Burrito" => 4.00,
                   "Nachos" => 3.00,
                   "Ultra Burrito" => 6.00,
                   "Super Nachos" => 5.00,
                   "Quesadilla" => 3.50
                  }

    @sides = {"Chips" => 1.50,
             "Guac" => 1.00,
             "Beans" => 1.50,
             "Rice" => 1.50,
             "Weird soup" => 2.00,
             "Salad" => 2.50
    }
  end

  def pick_a_main_dish
    puts "Hola, bienvenido a delicious palacio alimentos!"
    puts "¿Qué te gustaría para su plato principal?"

    x = 0
    while x < 6
      puts "We have:"
      puts" #{@main_dishes.keys[x]} for #{@main_dishes.values[x]}"
      x += 1
    end
    
    user_input
  end
end

l = Lunchlady.new
l.pick_a_main_dish

