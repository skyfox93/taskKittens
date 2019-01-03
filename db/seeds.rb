# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    skylar= User.create(name: "skylar")
    taskKittens=List.create(title: "taskKittens", user: skylar)
    make_data=Task.create(title: "create a database", due_date: 'Wed, 26 Dec 2018 15:23:17 GMT', list: taskKittens)
    Task.create(title: "create an api", due_date: 'Thu, 27 Dec 2018 15:23:17 GMT', list: taskKittens)
    Task.create(title: "create front-end", due_date: 'Fri, 28 Dec 2018 15:23:17 GMT', list: taskKittens);
