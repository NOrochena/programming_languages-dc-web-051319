require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(styles)
  new_hash = {}
  
  styles.each do |style, languages| 
    languages.each do |language, type|
      new_hash[language] = {:type => type[:type]}
      if new_hash[language].key?(:style)
        puts "test"
        new_hash[language][:style].push(style)
      else
        puts "false"
        new_hash[language][:style] = [style]
      end
      #new_hash[language][:style] = []
    end
  end
  
 # styles.each do |style, languages|
   # languages.each do |language, type|
    #  new_hash[language][:style].push(style)
    #end
  #end
  new_hash
end

puts reformat_languages(languages)