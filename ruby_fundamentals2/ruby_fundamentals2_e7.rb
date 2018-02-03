def wrap_text(text, symbols)
  return "#{symbols}#{text}#{symbols.reverse}"
end

puts wrap_text("flop", "-_@")

puts wrap_text("Samantha", "---+++===")
