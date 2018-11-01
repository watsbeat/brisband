# Keep all the record creation needed to seed the database with its default values
# Run db:seed command when necessary

# Destroy all records to have a blank slate - so we can run seed command as many times as we want.
Comment.destroy_all
Item.destroy_all
Band.destroy_all
User.destroy_all

# Create seeds for items, users and bands.
users = User.create([
    {
        id: 1,
        email: "bruce@gmail.com",
        password: "bruceblue",
        name: "Bruce Blue",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Rock, Punk"
    }, 
    {
        id: 2,
        email: "mary@gmail.com",
        password: "marymauve",
        name: "Mary Mauve",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Indie, Pop" 
    },
    {
        id: 3,
        email: "lars@gmail.com",
        password: "larslavender",
        name: "Lars Lavender",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Heavy Metal" 
    },
    {
        id: 4,
        email: "georgia@gmail.com",
        password: "georgiagreen",
        name: "Georgia Green",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Folk" 
    },
    {
        id: 5,
        email: "owen@gmail.com",
        password: "owenorange",
        name: "Owen Orange",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genres: "Blues, Alternative" 
    }
])

items = Item.create([
    {
        id: 1,
        user_id: 1,
        brand: "Ibanez",
        model: "RGA320",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        for_sale: false,
        price: 0.00
    }, 
    {
        id: 2,
        user_id: 2,
        brand: "Pearl",
        model: "Demon Drive Pedals",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        for_sale: false,
        price: 0.00
    },
    {
        id: 3,
        user_id: 3,
        brand: "Pearl",
        model: "EXPORT EXL",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        for_sale: true,
        price: 1000.00
    },
    {
        id: 4,
        user_id: 4,
        brand: "Shure",
        model: "SM-58",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        for_sale: true,
        price: 50.00
    },
    {
        id: 5,
        user_id: 1,
        brand: "Warwick",
        model: "Thumb NT 1988",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        for_sale: true,
        price: 950.00
    }
])

comments = Comment.create([
    {
        description: "I love Ibanez.",
        user_id: 1,
        item_id: 1
    },
    {
        description: "Shure mic's are the sure way to go!",
        user_id: 2,
        item_id: 4
    },
    {
        description: "Pearl makes me pearl!",
        user_id: 3,
        item_id: 3
    },
    {
        description: "Remeber Warwick Cappa?",
        user_id: 4,
        item_id: 5
    },
    {
        description: "Ibanabanez. LOL!",
        user_id: 5,
        item_id: 1
    },
    {
        description: "Shurely you've got to be kidding!",
        user_id: 1,
        item_id: 4
    },
    {
        description: "I had one of these as my first drumkit!",
        user_id: 2,
        item_id: 3
    },
    {
        description: "Or Warwick Davies?",
        user_id: 3,
        item_id: 5
    }
])

bands = Band.create([
    {
        id: 1,
        name: "Apple Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Punk",
        status: true,
        users: [User.find(1), User.find(4), User.find(5)]
    },
    {
        id: 2,
        name: "Blueberry Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Blues, Alternative",
        status: true,
        users: [User.find(2), User.find(3), User.find(4)]
    },
    {
        id: 3,
        name: "Banana Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Rock",
        status: false,
        users: [User.find(3), User.find(4), User.find(5)]
    },
    {
        id: 4,
        name: "Strawberry Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Indie, Pop",
        status: true,
        users: [User.find(1), User.find(2), User.find(3)]
    },
    {
        id: 5,
        name: "Mango Band",
        bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed dapibus elit. Aenean sed nunc volutpat, vulputate metus sed, interdum nisi. Morbi efficitur, augue et tincidunt iaculis, ligula lorem pellentesque metus, consequat euismod lectus tellus in neque. Maecenas fringilla efficitur mi ac porta. Vestibulum id orci tortor. Fusce cursus, leo.",
        genre: "Heavy Metal",
        status: false,
        users: [User.find(2), User.find(3), User.find(5)]
    }
])

# Prints number of items, users & bands created
p "Created #{Item.count} items"
p "Created #{User.count} users"
p "Created #{Band.count} bands"
p "Created #{Comment.count} comments"

# Try using rails runner commands, e.g.:
    # rails runner "p Item.pluck :brand" => an array of item brands
    # rails runner "p User.pluck :email" => an array of user emails
    # rails runner "p Band.pluck :name" => an array of band names