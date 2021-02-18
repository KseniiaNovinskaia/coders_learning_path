# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Path.create!(
      name: 'Full Stack Developer',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna rutrum tellus rutrum feugiat cursus ipsum eget nulla. Auctor imperdiet odio vulputate porta arcu nisl purus lobortis eget. Cras ac eu ut urna purus, varius nisl tincidunt velit. Dictumst sed sit massa mattis facilisi molestie sed quisque. Enim aenean nec semper a, tempor eget pharetra tristique viverra.',
      requirement: 'beginner',
      language: ['ruby', 'javascript', 'html', 'css', 'rails'])

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
