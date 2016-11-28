# Everyone needs cookies.
# This program is going to keep track
# of all the cookies ordered.

require 'sqlite3'

data = SQLite3::Database.new("cookies_orders.db")
data.results_as_hash = true


# One table contains the type of cookie and
# the amount ordered
# Second table contains the user's info
# and their order of cookies

create_cookies = <<-SQL
  CREATE TABLE IF NOT EXISTS cookies(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    count INT,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(id)
  )
SQL

create_orders = <<-SQL
  CREATE TABLE IF NOT EXISTS orders(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number INT,
    borough VARCHAR(255)
  )
SQL

data.execute(create_cookies)
data.execute(create_orders)


def cookie_choice(data, cookie, count, order_id)
	data.execute("INSERT INTO cookies (type, count, order_id) VALUES (?, ?, ?)",
	[cookie, count, order_id])
end

def order_create(data, name, phone_num, location)
	data.execute("INSERT INTO orders (name, number, borough) VALUES (?, ?, ?)",
	[name, phone_num, location])
end


cookie_list = [
	"Shortbread",
	"Chocolate Chip",
	"Thin Mints",
	"Lady Fingers",
	"Macaroons",
	"Oatmeal Raisin",
	"Peanut Butter",
	"Snickerdoodles"
	]

boroughs = [
	"Queens",
	"Brooklyn",
	"Manhattan",
	"Bronx",
	"Staten Island"
	]


# TESTS
#
# 10.times do |i|
# 	p cookie_list.sample
# 	p rand(1..10)
# end
#
# TESTS

# DATA GENERATION
#
# 1000.times do |i|
# 	cookie_choice(data, cookie_list.sample, rand(5..100), i+1)
#   order_create(data, "DBC", 1234567890, boroughs.sample)
# end
#
# DATA GENERATION

order_num = 1

puts "Hello, welcome to the Cookie Factory!"
p "Can I take your order?"
p "What cookie would you like?"
p cookie_list
cookie = gets.chomp.capitalize
p "How many would you like?"
count = gets.chomp.to_i
p "Can I have your name?"
name = gets.chomp
p "Phone number?"
num = gets.chomp.to_i
p "Which borough do you live in?"
p boroughs
borough = gets.chomp.capitalize

p "Your order is #{count} of #{cookie} cookies?y/n"
correct = gets.chomp.downcase
if correct == 'y'
	p "Thank you for your order #{name} of #{borough}!"
	cookie_choice(data, cookie, count, order_num)
	order_create(data, name, num, borough)
	order_num += 1
	# data.execute("SELECT order_id, name, type, count FROM cookies JOIN orders ON
	# 	cookies.order_id = orders.id")
else
	p "What would you like to change?"
	# FEATURE
end

