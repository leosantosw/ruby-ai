require 'openai'
require 'dotenv/load'

class OpenaiClient
    def initialize
        @client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])
    end

    def call 
        response = @client.chat(
            parameters: {
                model: "gpt-3.5-turbo",
                messages: [{ role: "user", content: "Me fala algumas frases em inglês?"}],
                temperature: 0.7,
            })
        
        response.dig('choices', 0, 'message', 'content')
    end
end
