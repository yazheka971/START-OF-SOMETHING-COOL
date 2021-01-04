#
class String
  BRACKETS = %w[() {} <> []]
  def valid?
    # case
    # when self.include?("()")
    original_string = self
    (length / 2).times do
      p original_string
      BRACKETS.each do |bracket|
        original_string = original_string.gsub(bracket, "")
      end
      # original_string = original_string.gsub("()", "")
      # original_string = original_string.gsub("{}", "")
      # original_string = original_string.gsub("[]", "")
      # original_string = original_string.gsub("<>", "")
      end
    # when self.include?("{}")
    #   delete("{}")
    # # when  self.include?("<>")
    #   delete("<>")
    # # when  self.include?("[]")
    #   delete("[]")
    # else p 'no'
    # end
    p original_string
    original_string.empty?
  end
end

p a = "<[{()}]>".valid?

# class String
#   def valid?
#     self == "<({[]})>" or "<{[]}>" or "<({[]})>" or "()" or "{}" or "[]" or "<>" or "{()}" or "({})" or "{<>}" or
#       "<{}>" or "{[]}" or "[{}]" or "(<>)" or "<()>" or "([])" or "[()]" or "[<>]" or "<[]>" or "({[]})" or "([{}])" or
#       "{[()]}" or "[({})]"
#   end
# end
#
# p "{[]}}".valid?


class String
  def valid?
    (length / 2).times do
      case true
      when self.start_with?("<") && self.end_with?(">")
        self.delete_prefix("<").delete_suffix(">")
      when self.start_with?("{")  self.end_with?("}")
        self.delete_prefix("{").delete_suffix("}")
      when self.start_with?("[") and end_with?("]")
        self.delete_prefix("[").delete_suffix("]")
      when self.start_with?("<") and end_with?(">")
        self.delete_prefix("<").delete_suffix(">")
      else p "no"
      end

    end
end


p "[]{<}>".valid?