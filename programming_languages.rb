def reformat_languages(languages)
	new_hash = {}
	languages.each do |category,langs|
		if category == "oo"
			langs.each do |name,aspect|
				aspect.each do |typeKey,typeVal|
					new_hash[name] = {
						:type => typeVal,
						:style => []
					}
				end
			end
					new_hash[name][:style] << category
		elsif category == "functional"
			langs.each do |name,aspect|
				aspect.each do |typeKey,typeVal|
					new_hash[name] = {
						:type => typeVal,
						:style => []
					}
				end
			end
		else
			nil
		end
	end
	new_hash
end

def lang
  {
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
end

def practice
	new_hash = {}
	lang.each do |category,langs|
		langs.each do |name,aspect|
			aspect.each do |typeKey,typeVal|
				new_hash[name] = {
					:type => typeVal,
					:style => []
				}
				new_hash[name][:style] << category
			end
		end
	end
	puts new_hash
end

practice