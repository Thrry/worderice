class WordController < ApplicationController
  def index
    @words = WordsService.get_words(5)

    @word_1 = {}
    @word_1[:word] = @words[0]
    @word_1[:gradient] = WordsService.get_gradient

    @word_2 = {}
    @word_2[:word] = @words[1]
    @word_2[:gradient] = WordsService.get_gradient

    @word_3 = {}
    @word_3[:word] = @words[2]
    @word_3[:gradient] = WordsService.get_gradient

    @word_4 = {}
    @word_4[:word] = @words[3]
    @word_4[:gradient] = WordsService.get_gradient

    @word_5 = {}
    @word_5[:word] = @words[4]
    @word_5[:gradient] = WordsService.get_gradient
  end

  def random(number: 5, separator: "_")


    number = params[:number].to_i if params[:number].present?
    separator = params[:separator] if params[:separator].present?

    @words = WordsService.get_words(number)
     respond_to do |format|
       format.json { render :json => {words: @words, sentence: sentencize(words: @words, separator: separator)}}
     end
  end

  def sentencize(words:, separator:)
      words.join(separator)
  end



end
