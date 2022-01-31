n = gets.to_i
st = $<.readlines
puts n == st.uniq.size ? 'No' : 'Yes'
