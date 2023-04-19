class OpenaiService   
    def get_chat_response(role, content)
        client = OpenAI::Client.new
        response = client.chat(
            parameters: {
                model: "gpt-3.5-turbo", # Required.
                messages: [{ role: role, content: content}], # Required.
                temperature: 0.7,
            })
            #.to_s
        #parsed_response = JSON.parse(response.cont)
        response.dig("choices", 0, "message", "content")
    end
end