@shopping_cart = []

@departments = [ :accessories, :clothes, :books, :media ]

@products = {
  accessories: [
    { reference_number: 1231, name: "The only mat", price: 15 },
    { reference_number: 1232, name: "The only water bottle", price: 20 },
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

puts "Welcome to our minimalistic yoga-store!\n
You'll like it as you won't have to spend too much time on making a choice...\n
Time for your first choice - what department do you want to visit?\n
Type the number of the desired department\n\n

  1 - Accessories\n
  2 - Media\n
  3 - Clothes\n
  4 - Books"

  user_choice_department = gets.chomp

  case user_choice_department
  when "1"
  when "2"
  when "3"
  when "4"
  else
  end

  
