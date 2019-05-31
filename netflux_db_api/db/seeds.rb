movie1 = Movie.create({
    title: 'Girls Trip',
    year: 2017,
    genre: 'Comedy',
    director: 'Malcolm D. Lee',
    plot: "When four lifelong friends travel to New Orleans for the annual Essence Festival, sisterhoods are rekindled, wild sides are rediscovered, and there's enough dancing, drinking, brawling, and romancing to make the Big Easy blush.",
    image: 'https://m.media-amazon.com/images/M/MV5BMjMwNTEzODUwMV5BMl5BanBnXkFtZTgwNjE5NjA5MjI@._V1_SX300.jpg'
  })
  movie2 = Movie.create({
      title: 'The Lord of the Rings: The Fellowship of the Ring',
      year: 2001,
      genre: 'Adventure',
      director: 'Peter Jackson',
      plot: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
      image: 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg'
    })
  
    movie3 = Movie.create({
        title: 'The Matrix', 
        year: 1999,
        genre: 'Action',
        director: 'Lana Wachowski', 
        plot: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
        image: 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg' 
      })



  user1 = User.create({
  name: 'someone',
  email: 'no'
    })

    user2 = User.create({
        name: 'alf',
        email: 'rock@roll.com'
    })

    user3 = User.create({
        name: 'Donny',
        email: 'rocc@roool.com'
    })

  
  free = Tier.create({
    plan:"Free"
  })
  silver = Tier.create({
    plan:"Silver"
    })
    gold = Tier.create({
        plan: "Gold"
    })

    free.users.push(user1)
    silver.users.push(user2)
    gold.users.push(user3)


  movie1.tiers.push(free, silver, gold)
  movie2.tiers.push(silver, gold)
  movie3.tiers.push(gold)