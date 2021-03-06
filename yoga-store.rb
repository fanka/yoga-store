
@shopping_cart = []

@departments = [ :accessories, :clothes, :books, :media ]

@products = {
  accessories: [
    { reference_number: 1231, name: "The only mat", price: 15 },
    { reference_number: 1232, name: "Water bottle", price: 20 },
  ],
  media: [
    { reference_number: 1233, name: "Relaxing Music", price: 25 },
    { reference_number: 1234, name: "Meditation video", price: 40 },
  ],
  clothes: [
    { reference_number: 1235, name: "The only T-shirt", price: 200 },
    { reference_number: 1236, name: "The only yoga pants", price: 300 },
  ],
  books: [
    { reference_number: 1237, name: "Why practice yoga", price: 30 },
    { reference_number: 1238, name: "Whe not just download this book, but buy it?", price: 10 },
  ]
}

# product list according to the department
def product_list (chosen_department)

department = @departments[chosen_department-1]
products = @products[department]

  puts "Here's a list of available products in the #{department.to_s.upcase} department:"
  products.each { |product|
  puts "Reference number: #{product[:reference_number]}"
  puts "Product: #{product[:name]}"
  puts "Price: #{product[:price]} EUR"
  asteriks
  }

return products

end

# Adding products to shopping cart
def choose_product
  puts "You can add a product to your shopping cart by typing its reference number:"
  gets.chomp.to_i
end

def selected_product(products, chosen_reference_number)
  products.each do |product|
    if product[:reference_number] == chosen_reference_number.to_i
      return product
    end
  end
end

def add_product_to_cart(products, chosen_reference_number)
  product = selected_product(products, chosen_reference_number)
  if product != nil
    @shopping_cart.push(product)
    puts "Great! You have just added #{product[:name]} to the cart!"
  else
    puts "Oops. Try typing the correct reference number."
  end
end


# Displaying shopping cart
def displaying_cart
  puts "Your Shopping Cart"
  total_price = 0

@shopping_cart.each do |product|
  puts "Reference number: #{product[:reference_number]}"
  puts "Product name: #{product[:name]}"
  puts "Price: #{product[:price]}"

  total_price += product[:price]

  asteriks

  puts "The total price of your order is: #{total_price} Eur"

  asteriks

  end
end


# Continue shopping
def continue_shopping
  puts "Would you like to continue shopping? Y/N"
  answer = gets.chomp
  if answer == "Y" || answer == "y"
    return true
  end
end


# Decorating

def new_line
  puts "\nl"
end

def asteriks
  puts "*" * 20
end







#VISITING STORE
loop do

puts "Welcome to our minimalistic yoga-store!\n
You'll like it as you won't have to spend too much time on making a choice...\n
Time for your first choice - what department do you want to visit?\n
Type the number of the desired department\n\n

  1 - Accessories\n
  2 - Clothes\n
  3 - Books\n
  4 - Media"

user_choice_department= gets.chomp

department_products = product_list(user_choice_department.to_i)
chosen_reference_number = choose_product
add_product_to_cart(department_products, chosen_reference_number)
displaying_cart
continue = continue_shopping
unless continue == true
  puts "Thanks for visiting our store! Hope to see you soon!"
  break
end



=begin


  case user_choice_department
  when "1"
    department_products = product_list(1)
    chosen_reference_number = choose_product
    add_product_to_cart(department_products, chosen_reference_number)
    displaying_cart
    continue = continue_shopping
    unless continue == true
      puts "Thanks for visiting our store! Hope to see you soon!"
      break
    end






  when "2"
    product_list(2)
    chosen_reference_number = choose_product
    add_product_to_cart(department_products, chosen_reference_number)
    displaying_cart
    continue = continue_shopping
    unless continue == true
      puts "Thanks for visiting our store! Hope to see you soon!"
      break
    end


  when "3"
    product_list(3)
    chosen_reference_number = choose_product
    add_product_to_cart(department_products, chosen_reference_number)
    displaying_cart
    continue = continue_shopping
    unless continue == true
      puts "Thanks for visiting our store! Hope to see you soon!"
      break
    end


  when "4"
    product_list(4)
    chosen_reference_number = choose_product
    add_product_to_cart(department_products, chosen_reference_number)
    displaying_cart
    continue = continue_shopping
    unless continue == true
      puts "Thanks for visiting our store! Hope to see you soon!"
      break
    end


  else
    puts "Please, choose department by typing from 1 to 4"
    break


  end
=end

end
