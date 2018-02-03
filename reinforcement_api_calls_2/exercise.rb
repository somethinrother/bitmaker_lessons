require 'httparty'

# # For words like "sitting down"
meaning_like_response = HTTParty.get('https://api.datamuse.com/words?ml=sitting+down/')
meaning_like_json = JSON.parse(meaning_like_response.body)

# # Suggestions for "initalize"
suggestion_response = HTTParty.get('https://api.datamuse.com/sug?s=initalize')
suggestion_json = JSON.parse(suggestion_response.body)
