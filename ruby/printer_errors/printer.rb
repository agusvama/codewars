def printer_error(s)
  errors(s).to_s + "/" + s.length.to_s
end

def errors(str)
  str.split('').select { | s | s > 'm' }.length
end
