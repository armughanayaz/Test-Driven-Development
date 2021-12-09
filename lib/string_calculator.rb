class StringCalculator

     def self.add(input)
          string_parsed = input.tr('^0-9', '')
          string_parsed_size = string_parsed.size
          
          if string_parsed.size == 0
              string_parsed = nil
              string_parsed_size = 0
          end
          {size: string_parsed_size, value: string_parsed }
     end
 end