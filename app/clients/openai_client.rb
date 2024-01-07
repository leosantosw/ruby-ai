require 'openai'
require 'dotenv/load'

class OpenaiClient
    def initialize
        @openai_client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])
    end

    def call(prompt)
        response = @openai_client.chat(
            parameters: {
                model: "gpt-3.5-turbo",
                messages: [{ role: "user", content: prompt }],
                temperature: 0.7,
            })
        puts response
        
        response.dig('choices', 0, 'message', 'content')
    end
end
