# Ruby-based OpenAI CLI

This script allows you to easily use OpenAI's GPT models to generate text.

## Prerequisites

To use this API, you will need:

- An OpenAI API key, which can be obtained from the [OpenAI website](https://platform.openai.com/account/api-keys).
- A `.env` file in your project folder with your OpenAI API key saved as `API_KEY`.

## Installation

To install the dependencies with Bundler, run:

```
bundle install
```

## Usage

```ruby
generate_text("Turn this sentence into a legal disclaimer for my website.\nI am not a lawyer, and nothing on this website constitutes legal advice.")
```

This will generate a response to the prompt using OpenAI's GPT models.