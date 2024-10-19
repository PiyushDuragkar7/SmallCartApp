# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  { name: 'Laptop', description: 'A powerful laptop.', price: 1000.99, stock_quantity: 5 },
  { name: 'Smartphone', description: 'A high-end smartphone.', price: 799.99, stock_quantity: 10 },
  { name: 'Tablet', description: 'A versatile tablet.', price: 499.99, stock_quantity: 7 },
  { name: 'Smartwatch', description: 'A sleek smartwatch.', price: 199.99, stock_quantity: 20 },
  { name: 'Headphones', description: 'Noise-cancelling headphones.', price: 149.99, stock_quantity: 15 },
  { name: 'Camera', description: 'A high-resolution digital camera.', price: 1200.00, stock_quantity: 3 },
  { name: 'Gaming Console', description: 'A popular gaming console.', price: 399.99, stock_quantity: 8 },
  { name: 'Wireless Charger', description: 'Fast wireless charger.', price: 29.99, stock_quantity: 50 },
  { name: 'Bluetooth Speaker', description: 'Portable Bluetooth speaker.', price: 59.99, stock_quantity: 30 },
  { name: 'Monitor', description: 'A 4K ultra HD monitor.', price: 299.99, stock_quantity: 12 },
  { name: 'Keyboard', description: 'Mechanical gaming keyboard.', price: 89.99, stock_quantity: 25 },
  { name: 'Mouse', description: 'Wireless ergonomic mouse.', price: 49.99, stock_quantity: 40 },
  { name: 'External Hard Drive', description: '1TB external hard drive.', price: 79.99, stock_quantity: 18 },
  { name: 'Printer', description: 'All-in-one wireless printer.', price: 199.99, stock_quantity: 6 },
  { name: 'Webcam', description: 'HD video webcam.', price: 59.99, stock_quantity: 12 },
  { name: 'Router', description: 'High-speed wireless router.', price: 129.99, stock_quantity: 22 },
  { name: 'Drone', description: 'Quadcopter drone with camera.', price: 499.99, stock_quantity: 4 },
  { name: 'Smart Thermostat', description: 'Wi-Fi smart thermostat.', price: 249.99, stock_quantity: 15 },
  { name: 'Fitness Tracker', description: 'Waterproof fitness tracker.', price: 99.99, stock_quantity: 35 },
  { name: 'Portable SSD', description: '500GB portable SSD.', price: 149.99, stock_quantity: 10 }
])
