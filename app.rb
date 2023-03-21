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

# generate_text("How do I cite the Bank Secrecy Act in accordance with the Bluebook?")

# generate_text("Turn this sentence into a legal disclaimer for my website.\nI am not a lawyer, and nothing on this website constitutes legal advice.")

generate_text("Improve this github readme\n1. Get your API key from https://platform.openai.com/account/api-keys. 2. Save the API key in a .env file in your project folder. 3. Start chatting with ChatGPT with the generate_text method, passing in your prompt as an argument to the method.")