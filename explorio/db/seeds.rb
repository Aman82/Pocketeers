# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
  {
    first_name: 'Alex',
    last_name: 'Dubelko',
    username: 'Thor',
    email: 'alex@ga.com',
    email_confirmation: 'alex@ga.com',
    password: 'alexeverything',
    password_confirmation: 'alexeverything',
    phone_number: '310-787-9900',
    privilege: 4
  },
  {
    first_name: 'Wilhem',
    last_name: 'Wundt',
    username: 'wilhemwundt',
    email: 'wilhem@ga.com',
    email_confirmation: 'wilhem@ga.com',
    password: 'wilhemalexssd',
    password_confirmation: 'wilhemalexssd',
    phone_number: '310-787-9999',
    privilege: 3
  },
  {
    first_name: 'Ben',
    last_name: 'An',
    username: 'BigBen',
    email: 'bigbenbeeper@gmail.com',
    email_confirmation: 'bigbenbeeper@gmail.com',
    password: 'beneverything',
    password_confirmation: 'beneverything',
    phone_number: '310-787-9988',
    privilege: 2
  },
  {
    first_name: 'Dan',
    last_name: 'Wilhem',
    username: 'DanDan',
    email: 'dan@ga.com',
    email_confirmation: 'dan@ga.com',
    password: 'daneverything',
    password_confirmation: 'daneverything',
    phone_number: '310-787-8800',
    privilege: 1
  }
  ]);

curriculums = Curriculum.create([
  {
    title: 'Learn to Lol',
    topic: 'League of Legends',
    summary: 'we are going to learn about how to maximize your skills on a macbook pro. You will play with no mouse, only a trackpad',
    syllabus:
      'week 0: What is a mac?
      week 1: The art of the trackpad
      week 2: Gaming is a lifestyle
      week 3: Advanced topics on LOL',
    timeframe: '4 Weeks',

    user: users[1]   #curator of curriculum
  }
  ]);


groups = Group.create([
  { 
    name: 'Fun with Bill',
    topic: "DataMining with Python",
    location: '1617 Broadway Santa Monica',
    start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
    end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

    curriculum: curriculums[0], # curriculum for the course

    users: [users[2]] # group mentor

    # users: [users[3]] # student of group
  },

  { 
    name: 'Learn to Lol',
    topic: "Advanced League of Legends Training on Macs",
    location: '1520 2nd Street',
    start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
    end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

    curriculum: curriculums[0],
    
    users: [users[1]]
  }
  ]);

# UserGroup.all.first.privilege = 3

# reviews = Review.create([
#   rating: 5,
#   comment: 'Best course of my life, thank you so much',
#   timestamp: DateTime.new(2001,2,3,4,5,6,'+7'),

#   user: users[3],
#   curriculum: curriculums[0]


#   ])


# interests = Interest.create([
#   {

#   }
#   ]);

