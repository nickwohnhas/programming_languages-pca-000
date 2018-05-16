require 'pry'

def reformat_languages(languages)
  updated_hash = {}
  languages.each do |key,value|
    value.each do |language, data_hash|
      updated_hash[language] = data_hash
        if language == :javascript
          updated_hash[language][:style] = [:oo, :functional]
        else
          updated_hash[language][:style] = [key]
        end
     end
  end
  updated_hash
end
