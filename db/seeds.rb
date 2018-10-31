# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
items = Item.create([
    {
        brand: "Ibanez",
        model: "RGA320",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        price: 0.00
        
    }, 
    {
        brand: "Pearl",
        model: "Demon Drive Pedals",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        price: 0.00
    },
    {
        brand: "Pearl",
        model: "EXPORT EXL",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        price: 1000.00
    },
    {
        brand: "Shure",
        model: "SM-58",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        price: 0.00
    },
    {
        brand: "Warwick",
        model: "Thumb NT 1988",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        price: 0.00
    }
])

comments = Comment.create([
    {
        description: "I love Ibanez.",
        item_id: 1
    },
    {
        description: "Shure mic's are the sure way to go!",
        item_id: 4
    },
    {
        description: "Pearl makes me pearl!",
        item_id: 3
    },
    {
        description: "Remeber Warwick Cappa?",
        item_id: 5
    },
    {
        description: "Ibanabanez. LOL!",
        item_id: 1
    },
    {
        description: "Shurely you've got to be kidding!",
        item_id: 4
    },
    {
        description: "I had one of these as my first drumkit!",
        item_id: 3
    },
    {
        description: "Or Warwick Davies?",
        item_id: 5
    }
])