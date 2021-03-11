# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Clearing the db first..."
User.destroy_all
Path.destroy_all
p "db clear! Ready for seeding!"
u = User.create!(
      name: 'Sarah',
      email: 'sarah@gmail.com',
      password: '123456',
      )
p "Created the USER '#{u.name}', email: '#{u.email}', password: '123456'"


  p2 = Path.create!(
    name: 'Frontend Developer',
    description: 'Machine Learning is an increasingly hot field of data science dedicated to enabling computers to learn from data. From spam filtering in social networks to computer vision for self-driving cars, the potential applications of Machine Learning are vast.',
    requirement: 'beginner',
    language: 'python'
   )

p = Path.create!(
        name: 'Full Stack Developer',
        description: 'As a jack of all trades (and master of quite a few), a full-stack engineer can get a project done from start to finish. In this Path, you’ll begin with the front-end, move on to the back-end, then learn to connect the two. By the time you’re done, you’ll have the well-rounded skills needed to enter this in-demand job market.',
        requirement: 'intermediate',
        language: 'ruby javascript html css rails'
        )
  p "Created the PATH #{p.name}!"


  p3 = Path.create!(
    name: 'Data Analyst',
    description: 'Companies are looking for data analysts to drive informative decision making, and this Path will teach you the skills you need to become just that. You’ll learn how to use Python and SQL to acquire, clean, and analyze data, plus communicate your findings. Along the way, you’ll build portfolio-worthy projects that will help you get job-ready.',
    requirement: 'advanced',
    language: 'python'
   )
  p4 = Path.create!(
    name: 'iOS Developer',
    description: 'Swift is a powerful programming language that is easy and also fun to learn. Its code is safe by design, yet also produces software that runs lightning-fast. It is used to build apps for iOS, watchOS, macOS, tvOS, and Linux. This Path will start with the fundamental programming concepts before digging deeper into the more advanced Swift topics.',
    requirement: 'advanced',
    language: 'swift'
   )
  p "Created three more PATHs!"
# step_type could be: article, video or module where 'module' would be specified by its source, e.g. codecademy, freecodecamp or udemy
steps_data_first = [
  {
    url: 'https://www.codecademy.com/learn/learn-html',
    description: 'Learn the basics of HTML5 and start building & editing web pages.',
    title: 'Learn HTML',
    step_type: 'codecademy',
    duration: 540
  },
  {
    url: 'https://www.freecodecamp.org/learn/responsive-web-design/#basic-css',
    description: 'CSS, or Cascading Style Sheets, tell the browser how to display the text and other content that you write in HTML. With CSS, you can control the color, font, size, spacing, and many other aspects of HTML elements.',
    title: 'Basic CSS',
    step_type: 'freecodecamp',
    duration: 480
  },
  {
    url: 'https://www.youtube.com/watch?v=x3c1ih2NJEg',
    description: 'How does the Internet work? The video you are watching now traveled thousands of miles from a Google data center to reach you. Let’s learn how the Internet works by getting to understand the details of this data’s incredible journey.',
    title: 'How the Internet works',
    step_type: 'video',
    duration: 100
  },
  {
    url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/',
    description: 'A comprehensive guide to CSS flexbox layout. This complete guide explains everything about flexbox, focusing on all the different possible properties for the parent element (the flex container) and the child elements (the flex items). It also includes history, demos, patterns, and a browser support chart.',
    title: 'A complete Guide to Flexbox',
    step_type: 'article',
    duration: 75
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Ruby for Absolute Beginners',
    step_type: 'udemy',
    duration: 420
  },
  {
    url: 'https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/',
    description: 'You don’t need OOP (Object Oriented Programming) to write code.
You could write any Ruby program without OOP.
But using OOP makes things easier if you’re writing a non-trivial program.
Why?
Because OOP is all about how you design & organize your code.
You create classes that represent concepts in your program.
And each class is responsible for doing something.',
    title: 'OOP Basics with Ruby',
    step_type: 'article',
    duration: 110
  },
  {
    url: 'https://www.codecademy.com/learn/introduction-to-javascript',
    description: 'Learn the JavaScript fundamentals you’ll need for front-end or back-end development. Complete Exercise 1 (Introduction) up to 7 (Iterators).',
    title: 'Javascript Basics',
    step_type: 'codecademy',
    duration: 300
  },
  {
    url: 'https://www.udemy.com/course/advanced-and-object-oriented-javascript/?ranMID=39197&ranEAID=JVFxdTr9V80&ranSiteID=JVFxdTr9V80-uJrNvDXXn2NLFU385E_YjQ&LSNPUBID=JVFxdTr9V80&utm_source=aff-campaign&utm_medium=udemyads',
    description: 'This course will fill in any gaps in your JavaScript knowledge and will help you learn and use any other JS frameworks like ReactJS,NodeJS,AngularJs easily.

JavaScript does not use structures like classes  to implement object oriented programming.This can be confusing for programmers coming from Java ,C++ or python background.This course covers every detail of JavaScript types, functions, objects and how JavaScript engine deals with them which will clear up any confusion and help you implement your JavaScript applications in a better way.',
    title: 'Advanced an Object Oriented Javascript and ES6',
    step_type: 'udemy',
    duration: 330
  },
  {
    url: 'https://www.youtube.com/watch?v=HXV3zeQKqGY',
    description: 'In this course, we\'ll be looking at database management basics and SQL using the MySQL RDBMS. The course is designed for beginners to SQL and database management systems, and will introduce common database management topics.',
    title: 'SQL - Database Course for Beginners',
    step_type: 'video',
    duration: 260
  },
  {
    url: 'https://www.codecademy.com/articles/design',
    description: '5 Steps to leverage design practices and tools while you build websites.',
    title: 'Consider Design While You Build',
    step_type: 'article',
    duration: 50
  },
  {
    url: 'https://www.youtube.com/watch?v=Cx2dkpBxst8&list=PLXDU_eVOJTx7QHLShNqIXL1Cgbxj7HlN4',
    description: 'Figma is where teams design together. Bring ideas to life in a design, wireframe, or prototype. Partner with teammates from content creation to design implementation. Get better feedback from your stakeholders. Figma gets everyone on the same page—literally.',
    title: 'Figma for Beginners',
    step_type: 'video',
    duration: 10
  },
  {
    url: 'https://www.udemy.com/course/ruby-on-rails-a-beginners-guide-free/',
    description: 'Once you have completed this course you will have this skill to build out your very own application using a "step by step" approach or by using Rails generators.

Our first Model is our "User", we cover how this "Model" can be anything you desire.

We then look at styling your site using Gems and Bootstrap. I also show you resources on where to find cool Bootstrap layouts that you can simply drop into your application.

We then cover how to build association between a "User Model" and a "Article Model". This is an important step in any applications as it gives the ability to associate objects in your database.',
    title: 'Ruby on Rails a Beginners Guide',
    step_type: 'udemy',
    duration: 390
  }
]
steps_data_first.each do |step_data|
  Step.create!(
    path_id: p.id,
    url: step_data[:url],
    description: step_data[:description],
    title: step_data[:title],
    step_type: step_data[:step_type],
    duration: step_data[:duration]
  )
end
p "Added 11 STEPs to the path #{p.name}"
# 12.times do
#   Step.create!(
#     path_id: p.id,
    # url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    # description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    # title: 'Learn Flexbox',
    # step_type: 'module',
    # duration: 45
    # )
# end
# p "Added 12 identical STEPs to the path!"
steps_data_second = [
  {
    url: 'https://www.codecademy.com/learn/learn-html',
    description: 'Learn the basics of HTML5 and start building & editing web pages.',
    title: 'Linear Regression',
    step_type: 'codecademy',
    duration: 920
  },
  {
    url: 'https://www.freecodecamp.org/learn/responsive-web-design/#basic-css',
    description: 'CSS, or Cascading Style Sheets, tell the browser how to display the text and other content that you write in HTML. With CSS, you can control the color, font, size, spacing, and many other aspects of HTML elements.',
    title: 'Logistic Regression',
    step_type: 'freecodecamp',
    duration: 480
  },
  {
    url: 'https://www.youtube.com/watch?v=x3c1ih2NJEg',
    description: 'How does the Internet work? The video you are watching now traveled thousands of miles from a Google data center to reach you. Let’s learn how the Internet works by getting to understand the details of this data’s incredible journey.',
    title: 'Decision Trees',
    step_type: 'video',
    duration: 250
  },
  {
    url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/',
    description: 'A comprehensive guide to CSS flexbox layout. This complete guide explains everything about flexbox, focusing on all the different possible properties for the parent element (the flex container) and the child elements (the flex items). It also includes history, demos, patterns, and a browser support chart.',
    title: 'Clustering: K-Means',
    step_type: 'article',
    duration: 360
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Perceptron',
    step_type: 'udemy',
    duration: 720
  },
  {
    url: 'https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/',
    description: 'You don’t need OOP (Object Oriented Programming) to write code.
You could write any Ruby program without OOP.
But using OOP makes things easier if you’re writing a non-trivial program.
Why?
Because OOP is all about how you design & organize your code.
You create classes that represent concepts in your program.
And each class is responsible for doing something.',
    title: 'Artificial Intelligence Decision Making',
    step_type: 'article',
    duration: 640
  }
]
steps_data_second.each do |step_data|
  Step.create!(
    path_id: p2.id,
    url: step_data[:url],
    description: step_data[:description],
    title: step_data[:title],
    step_type: step_data[:step_type],
    duration: step_data[:duration]
  )
end


steps_data_third = [
  {
    url: 'https://www.codecademy.com/learn/learn-html',
    description: 'Learn the basics of HTML5 and start building & editing web pages.',
    title: 'Python Fundamentals',
    step_type: 'codecademy',
    duration: 920
  },
  {
    url: 'https://www.freecodecamp.org/learn/responsive-web-design/#basic-css',
    description: 'CSS, or Cascading Style Sheets, tell the browser how to display the text and other content that you write in HTML. With CSS, you can control the color, font, size, spacing, and many other aspects of HTML elements.',
    title: 'Data Acquisition',
    step_type: 'freecodecamp',
    duration: 640
  },
  {
    url: 'https://www.youtube.com/watch?v=x3c1ih2NJEg',
    description: 'How does the Internet work? The video you are watching now traveled thousands of miles from a Google data center to reach you. Let’s learn how the Internet works by getting to understand the details of this data’s incredible journey.',
    title: 'Data Manipulation with Pandas',
    step_type: 'video',
    duration: 450
  },
  {
    url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/',
    description: 'A comprehensive guide to CSS flexbox layout. This complete guide explains everything about flexbox, focusing on all the different possible properties for the parent element (the flex container) and the child elements (the flex items). It also includes history, demos, patterns, and a browser support chart.',
    title: 'Data Wrangling and Tidying',
    step_type: 'article',
    duration: 360
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Summary Statistics',
    step_type: 'udemy',
    duration: 720
  },
  {
    url: 'https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/',
    description: 'You don’t need OOP (Object Oriented Programming) to write code.
You could write any Ruby program without OOP.
But using OOP makes things easier if you’re writing a non-trivial program.
Why?
Because OOP is all about how you design & organize your code.
You create classes that represent concepts in your program.
And each class is responsible for doing something.',
    title: 'Hypothesis Testing',
    step_type: 'article',
    duration: 640
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Data Visualization',
    step_type: 'udemy',
    duration: 720
  },
  {
    url: 'https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/',
    description: 'You don’t need OOP (Object Oriented Programming) to write code.
You could write any Ruby program without OOP.
But using OOP makes things easier if you’re writing a non-trivial program.
Why?
Because OOP is all about how you design & organize your code.
You create classes that represent concepts in your program.
And each class is responsible for doing something.',
    title: 'Analyze Real Data with SQL',
    step_type: 'article',
    duration: 640
  }
]
steps_data_third.each do |step_data|
  Step.create!(
    path_id: p3.id,
    url: step_data[:url],
    description: step_data[:description],
    title: step_data[:title],
    step_type: step_data[:step_type],
    duration: step_data[:duration]
  )
end


steps_data_forth = [
  {
    url: 'https://www.codecademy.com/learn/learn-html',
    description: 'Learn the basics of HTML5 and start building & editing web pages.',
    title: 'iOS and Swift Foundations',
    step_type: 'codecademy',
    duration: 1050
  },
  {
    url: 'https://www.freecodecamp.org/learn/responsive-web-design/#basic-css',
    description: 'CSS, or Cascading Style Sheets, tell the browser how to display the text and other content that you write in HTML. With CSS, you can control the color, font, size, spacing, and many other aspects of HTML elements.',
    title: 'Wireframing and Creating a Project in Xcode',
    step_type: 'freecodecamp',
    duration: 950
  },
  {
    url: 'https://www.youtube.com/watch?v=x3c1ih2NJEg',
    description: 'How does the Internet work? The video you are watching now traveled thousands of miles from a Google data center to reach you. Let’s learn how the Internet works by getting to understand the details of this data’s incredible journey.',
    title: 'Creating User Interfaces with SwiftUI',
    step_type: 'video',
    duration: 1200
  },
  {
    url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/',
    description: 'A comprehensive guide to CSS flexbox layout. This complete guide explains everything about flexbox, focusing on all the different possible properties for the parent element (the flex container) and the child elements (the flex items). It also includes history, demos, patterns, and a browser support chart.',
    title: 'Building Code History: Part One',
    step_type: 'article',
    duration: 980
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Building Code History: Part Two',
    step_type: 'udemy',
    duration: 720
  },
  {
    url: 'https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/',
    description: 'You don’t need OOP (Object Oriented Programming) to write code.
You could write any Ruby program without OOP.
But using OOP makes things easier if you’re writing a non-trivial program.
Why?
Because OOP is all about how you design & organize your code.
You create classes that represent concepts in your program.
And each class is responsible for doing something.',
    title: 'Building Code History: Part Three',
    step_type: 'codecademy',
    duration: 1400
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'As the Course title says it all,  this course "Ruby For Absolute Beginners" is created absolutely for any one wanting to get their hands dirty and learn programming language.
Since Ruby has very little to no syntax, It is the most easiest language to learn any programming language.
If you are new to programming or have no prior knowledge about programming, then look nowhere.
This course is totally dedicated and planned for new comers who wants to learn programming and there is no any other simpler language than "Ruby" to learn programming.',
    title: 'Publishing to the App Store',
    step_type: 'udemy',
    duration: 720
  }
]
steps_data_forth.each do |step_data|
  Step.create!(
    path_id: p4.id,
    url: step_data[:url],
    description: step_data[:description],
    title: step_data[:title],
    step_type: step_data[:step_type],
    duration: step_data[:duration]
  )
end

lg = LearningGroup.create!(
      path_id: p.id,
      slack_channel: '#full-stack-development-01'
      )
p "Initialized a LEARNING_GROUP, associated to the path with the slack channel '#{lg.slack_channel}'"
Step.all.each_with_index do |step, i|
  StepProgress.create!(
    user_id: User.find_by(name: u.name).id,
    step_id: step.id,
    completion: true,
    path_id: p2.id
    )
end

Step.all.each_with_index do |step, i|
  StepProgress.create!(
    user_id: User.find_by(name: u.name).id,
    step_id: step.id,
    completion: i < 6,
    path_id: p.id
    )
end

p "Defined the STEP_PROGRESS for each step for one user (the first user in the db)"
UsersLearningGroup.create!(
  user_id: User.find_by(name: u.name).id,
  learning_group_id: lg.id
  )
p "Created a USERS_LEARNING_GROUP consisting of the first user and the learning group"
# CodewarsProfile.create!(
#   user_name: 'jasonheeps',
#   user_id: User.find_by(name: u.name).id
#   )
p "Added a CODEWARS_PROFILE"
p "-------------------------"
p "--- seeding complete! ---"
p "-------------------------"



Path.all.each do |path|
  Chatroom.create!(
    name: path.name,
    path_id: path.id
    )
end

p "Chatrooms are created"
