class WordsService
  # WordsService.get_words(number)

  def self.get_words(number)
    data  = JSON.parse(File.read('app/assets/json/src_wordlist_fr_5d.json'))
    words = []
    number.times do |i|
      words << data[get_number]
    end
    words
  end

  def self.get_gradient

      angle = rand(-90..90)
      colors = ["#0E9F1C", "#703EC1"]
      colors_opacity_1 = rand(50..99)
      colors_opacity_2 = rand(50..99)
      colors = ["rgba(112,62,193,0.#{colors_opacity_1})", "rgba(14,159,28,0.#{colors_opacity_2})"]
      first_color = colors.sample
      colors.delete(first_color)
      second_color = colors.first
      "background-image: linear-gradient(#{angle}deg, #{first_color}, #{second_color});"
  end

  def self.get_number
    number = ""
    5.times do
      number << rand(1...7).to_s
    end
    number
  end

end
