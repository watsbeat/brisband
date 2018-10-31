# Keep all the record creation needed to seed the database with its default values
# Run db:seed command when necessary

# Destroy all records to have a blank slate - so we can run seed command as many times as we want.
Item.destroy_all
User.destroy_all
Band.destroy_all

# Create seeds for items, users and bands.
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

users = User.create([
    {
        email: "bruce@gmail.com",
        password: "bruceblue",
        name: "Bruce Blue",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Rock, Punk" 
    }, 
    {
        email: "mary@gmail.com",
        password: "marymauve",
        name: "Mary Mauve",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Indie, Pop" 
    },
    {
        email: "lars@gmail.com",
        password: "larslavender",
        name: "Lars Lavender",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Heavy Metal" 
    },
    {
        email: "georgia@gmail.com",
        password: "georgiagreen",
        name: "Georgia Green",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Folk" 
    },
    {
        email: "owen@gmail.com",
        password: "owenorange",
        name: "Owen Orange",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Blues, Alternative" 
    }
])

bands = Band.create([
    {
        name: "Apple Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Punk",
        status: true       
    },
    {
        name: "Blueberry Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Blues, Alternative",
        status: true       
    },
    {
        name: "Banana Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Rock",
        status: false       
    },
    {
        name: "Strawberry Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Indie, Pop",
        status: true       
    },
    {
        name: "Mango Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Heavy Metal",
        status: false      
    }
]) 

# Prints number of items, users & bands created
p "Created #{Item.count} items"
p "Created #{User.count} users"
p "Created #{Band.count} bands"