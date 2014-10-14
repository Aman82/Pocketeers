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
    title: 'HTML 5 Advanced Topics',
    topic: 'HTML 5',
    summary: 'we are going to learn about how to maximize your skills on a macbook pro. You will play with no mouse, only a trackpad',
    syllabus:
      'week 0: What is a mac?
      week 1: The art of the trackpad
      week 2: Gaming is a lifestyle
      week 3: Advanced topics on LOL',
    timeframe: '2 Weeks',

    user: users[1]   #curator of curriculum
  },
    {
    title: 'Trading with Volume & Price',
    topic: 'Stock Trading',
    summary: 'we are going to learn about how to maximize your skills on a macbook pro. You will play with no mouse, only a trackpad',
    syllabus:
      'week 0: What is a mac?
      week 1: The art of the trackpad
      week 2: Gaming is a lifestyle
      week 3: Advanced topics on LOL',
    timeframe: '2 Weeks',

    user: users[0]   #curator of curriculum
  },
    {
    title: 'Financial Data Mining with Python',
    topic: 'FINC Data and Python',
    summary: 'we are going to learn about how to maximize your skills on a macbook pro. You will play with no mouse, only a trackpad',
    syllabus:
      'week 0: What is a mac?
      week 1: The art of the trackpad
      week 2: Gaming is a lifestyle
      week 3: Advanced topics on LOL',
    timeframe: '3 Weeks',

    user: users[3]   #curator of curriculum
  },
  {
    title: 'Learn RSpec w/ a Master',
    topic: 'Rspec',
    summary: 'we are going to learn about how to maximize your skills on a macbook pro. You will play with no mouse, only a trackpad',
    syllabus:
    'week 0: What is a mac?
    week 1: The art of the trackpad
    week 2: Gaming is a lifestyle
    week 3: Advanced topics on LOL',
    timeframe: '4 Weeks',

    user: users[2]   #curator of curriculum
  },


  ]);


groups = Group.create([
  { 
    name: users[1].full_name,
    topic: curriculums[0].topic,
    location: '1617 Broadway, Santa Monica, CA',
    start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
    end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

    curriculum: curriculums[0], # curriculum for the course

    users: [users[2]] # group mentor

    # users: [users[3]] # student of group
  },

  { 
    name: users[0].full_name,
    topic: curriculums[1].topic,
    location: '1520 2nd Street, Santa Monica, CA',
    start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
    end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

    curriculum: curriculums[1],
    
    users: [users[1]]
  },
  { 
  name: users[2].full_name,
  topic: curriculums[2].topic,
  location: '533 Marguerita, Santa Monica, CA',
  start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
  end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

  curriculum: curriculums[2],
  
  users: [users[1]]
},
  { 
  name: users[3].full_name,
  topic: curriculums[3].topic,
  location: '1520 2nd Street, Santa Monica, CA',
  start_date: DateTime.new(2001,2,3,4,5,6,'+7'),
  end_date: DateTime.new(2001,2,3,4,5,6,'+7'),

  curriculum: curriculums[3],
  
  users: [users[1]]
}
  ]);

interests = Interest.create([
  {
    count: 300,
    topic: 'Biochemistry'
  }, {
    count: 450,
    topic: 'Stock Market'
  }, {
    count: 500,
    topic: 'Psychology'
  }, {
    count: 550,
    topic: 'Biology'
  }, {
    count: 650,
    topic: 'Graphic Design'
  }, {
    count: 445,
    topic: 'Economics'
  }, {
    count: 706,
    topic: 'English'
  }, {
    count: 450,
    topic: 'Computer Science'
  }, {
    count: 500,
    topic: 'Math'
  }, {
    count: 550,
    topic: 'International Studies'
  }, {
    count: 650,
    topic: 'Poetry'
  }, {
    count: 1000,
    topic: 'League of Legends'
  }, {
    count: 504,
    topic: 'Cooking'
  }]);
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

