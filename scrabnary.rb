#!/usr/bin/env ruby

sstr = %w{
  
  kerabasn
    
  cteemlo
    
  notamsci
    
  sypkip
    
  dinesi
    
  hsebly
    
  eectlirc
    
  stiraex
    
  aolhosn
    
  rwdneig
}

i = 0
found = nil
file = "dict/wordlist.txt"
fwords = []

sstr.each { |sword|
  IO.foreach(file) { |word|
    word = word.strip

    if (sword.length == word.length) 
      cstr = String.new(word)
      m = String.new

      sword.each_char { |x|
        i = 0

        cstr.each_char { |xx|
          if (x == xx) 
            m.insert(-1, x)
            cstr.slice!(i..i)
            found = true
            break
          else
            found = false
          end
				
          i += 1
        }	

        if (m == sword)
          print "#{m} = #{word}\n"
          fwords << word
        end

        if (!found && i > 0)
          break
        end
      }
    end
  }
}

puts "All words: ", fwords.join(", ")
