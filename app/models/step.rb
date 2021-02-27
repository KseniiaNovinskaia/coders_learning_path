class Step < ApplicationRecord
  belongs_to :path
  has_many :step_progresses

  def duration_string
    duration = self.duration
    hours = duration / 60
    minutes = duration % 60
    duration_string = ""
    duration_string += "#{hours}h" unless hours.zero?
    duration_string += " #{minutes}m" unless minutes.zero?
    duration_string
  end

  def external_source_icon
    case step_type
    when 'article'
      {
        path_to_source_icon: 'article_icon.svg',
        source_icon_alt: 'book-open icon'
      }
    when 'video'
      {
        path_to_source_icon: 'video_icon.svg',
        source_icon_alt: 'video icon'
      }
    when 'codecademy'
      {
        path_to_source_icon: 'codecademy_icon.svg',
        source_icon_alt: 'codecademy icon'
      }
    when 'freecodecamp'
      {
        path_to_source_icon: 'free_code_camp_icon.svg',
        source_icon_alt: 'codecademy icon'
      }
    when 'udemy'
      {
        path_to_source_icon: 'udemy_icon.svg',
        source_icon_alt: 'udemy icon'
      }
    end
  end
end
