module OpenAIPromptUtils
  def self.generate_diet_prompt(diet_days)
    <<~PROMPT
      Gerar sugestões de refeições saudáveis para uma dieta específica.
      **Exemplo:**
      ```json
      {
        "diet_days": #{diet_days}
      }
      ```
    PROMPT
  end
end
