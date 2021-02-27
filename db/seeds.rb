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

  p = Path.create!(
        name: 'Full Stack Developer',
        description: 'As a jack of all trades (and master of quite a few), a full-stack engineer can get a project done from start to finish. In this Path, you’ll begin with the front-end, move on to the back-end, then learn to connect the two. By the time you’re done, you’ll have the well-rounded skills needed to enter this in-demand job market.',
        requirement: 'beginner',
        language: 'ruby javascript html css rails'
        )

  p "Created the PATH #{p.name}!"

  Path.create!(
    name: 'Machine Learning',
    description: 'Machine Learning is an increasingly hot field of data science dedicated to enabling computers to learn from data. From spam filtering in social networks to computer vision for self-driving cars, the potential applications of Machine Learning are vast.',
    requirement: 'intermediate',
    language: 'python'
   )

  Path.create!(
    name: 'Data Analyst',
    description: 'Companies are looking for data analysts to drive informative decision making, and this Path will teach you the skills you need to become just that. You’ll learn how to use Python and SQL to acquire, clean, and analyze data, plus communicate your findings. Along the way, you’ll build portfolio-worthy projects that will help you get job-ready.',
    requirement: 'advanced',
    language: 'python'
   )

  Path.create!(
    name: 'iOS Developer',
    description: 'Swift is a powerful programming language that is easy and also fun to learn. Its code is safe by design, yet also produces software that runs lightning-fast. It is used to build apps for iOS, watchOS, macOS, tvOS, and Linux. This Path will start with the fundamental programming concepts before digging deeper into the more advanced Swift topics.',
    requirement: 'advanced',
    language: 'swift'
   )

  p "Created three more PATHs!"

# step_type could be: article, video or module where 'module' would be specified by its source, e.g. codecademy, freecodecamp or udemy
steps_data = [
  {
    url: 'https://www.codecademy.com/learn/learn-html',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn HTML',
    step_type: 'codecademy',
    duration: 540
  },
  {
    url: 'https://www.freecodecamp.org/learn/responsive-web-design/#basic-css',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Basic CSS',
    step_type: 'freecodecamp',
    duration: 480
  },
  {
    url: 'https://www.youtube.com/watch?v=x3c1ih2NJEg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'How the Internet works',
    step_type: 'video',
    duration: 10
  },
  {
    url: 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'A complete Guide to Flexbox',
    step_type: 'article',
    duration: 25
  },
  {
    url: 'https://www.udemy.com/course/ruby-for-absolute-beginners/?aff_code=Ewh3Y1xWRnkGRR5zMkBPbG1RGXFfVFh8CF4ac05QRHYBShFxWT5XMRM%3D&pmtag=CAREERS24LEARN15&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.ROW&utm_content=deal4584&utm_term=_._ag_88010211481_._ad_437497337007_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9061132_._pd__._&matchtype=b&gclid=Cj0KCQiA-OeBBhDiARIsADyBcE71hhRe4TSt9fPwxuRZlQ5vHSnNuykh0ayuF2Lol5r0ULycrzLi4hMaAoaGEALw_wcB',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Ruby for Absolute Beginners',
    step_type: 'udemy',
    duration: 420
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
  {
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
  },
]

steps_data.each do |step_data|
  Step.create!(
    path_id: p.id,
    url: step_data[:url],
    description: step_data[:description],
    title: step_data[:title],
    step_type: step_data[:step_type],
    duration: step_data[:duration]
  )
end

p "Added 12 STEPs to the path #{p.name}"

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

lg = LearningGroup.create!(
      path_id: p.id,
      slack_channel: '#full-stack-development-01'
      )

p "Initialized a LEARNING_GROUP, associated to the path with the slack channel '#{lg.slack_channel}'"

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

CodewarsProfile.create!(
  user_name: 'jasonheeps',
  user_id: User.find_by(name: u.name).id
  )

p "Added a CODEWARS_PROFILE"
p "-------------------------"
p "--- seeding complete! ---"
p "-------------------------"
