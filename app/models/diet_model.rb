require_relative '../clients/openai_client'
require_relative '../utils/openai_prompt_utils'

class DietModel 
    def initialize
        @client = OpenaiClient.new
    end

    def call(diet_days)
        prompt = OpenAIPromptUtils.generate_diet_prompt(diet_days)
        @client.call(prompt)
    end
end
    