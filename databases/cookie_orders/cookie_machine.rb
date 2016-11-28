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


# COOKIES
# SHORTBREAD
# CHOCOLATE CHIP
# THIN MINTS
# LADY FINGERS
# MACAROONS
# OATMEAL RAISIN
# PEANUT BUTTER
# SNICKERDOODLES
