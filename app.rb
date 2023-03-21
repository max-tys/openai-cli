# https://github.com/alexrudall/ruby-openai
require 'openai'

# https://github.com/bkeepers/dotenv
require 'dotenv/load'

# Configure OpenAI client
OpenAI.configure do |config|
  config.access_token = ENV['API_KEY']
end

CLIENT = OpenAI::Client.new

# A set of models that can understand and generate natural language or code
# https://platform.openai.com/docs/models/gpt-3-5
def generate_text(prompt)
  response = CLIENT.chat(
    parameters: {
      model: 'gpt-3.5-turbo',
      messages: [{ role: 'user', content: prompt }],
      temperature: 0.7
    })

  puts response.dig('choices', 0, 'message', 'content')
end

# Usage example
generate_text("How do I cite the Bank Secrecy Act in accordance with the Bluebook?")