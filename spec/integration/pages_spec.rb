# spec/integration/blogs_spec.rb
require 'swagger_helper'

describe 'Words API' do

  path 'api/v1/random' do

    get 'Get words' do
      tags 'Words'
      produces 'application/json', 'application/xml'
      parameter number: :integer, separator: :string

      response '200', 'words created' do
        schema type: :object,
          properties: {
            words: { type: :array },
            sentence: { type: :string }
          },
          required: [ 'words', 'sentence' ]

        run_test!
      end

    end
  end
end
