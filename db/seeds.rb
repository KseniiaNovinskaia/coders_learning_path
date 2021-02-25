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
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. Dictumst sed sit massa mattis facilisi molestie sed quisque. Enim aenean nec semper a, tempor eget pharetra tristique viverra.',
        requirement: 'beginner',
        language: 'ruby javascript html css rails'
        )

  p "Created the PATH #{p.name}!"

  Path.create!(
    name: 'ML Developer',
   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. Dictumst sed sit massa mattis facilisi molestie sed quisque. Enim aenean nec semper a, tempor eget pharetra tristique viverra.',
   requirement: 'intermediate',
   language: 'python'
   )

  Path.create!(
    name: 'Data Analyst',
   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. Dictumst sed sit massa mattis facilisi molestie sed quisque. Enim aenean nec semper a, tempor eget pharetra tristique viverra.',
   requirement: 'advanced',
   language: 'intermediate'
   )

  Path.create!(
    name: 'iOS Developer',
   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. Dictumst sed sit massa mattis facilisi molestie sed quisque. Enim aenean nec semper a, tempor eget pharetra tristique viverra.',
   requirement: 'advanced',
   language: 'swift'
   )

  p "Created three more PATHs!"

12.times do
  Step.create!(
    path_id: p.id,
    url: 'https://www.codecademy.com/courses/react-101/lessons/react-components-advanced-jsx/exercises/render-multiline-jsx',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. ',
    title: 'Learn Flexbox',
    step_type: 'module',
    duration: 45
    )
end

p "Added 12 identical STEPs to the path!"

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
