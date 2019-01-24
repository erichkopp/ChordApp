# Key Transposer

system ("clear")

semitones = %w[a a# b c c# d d# e f f# g g#]

puts "Pick a key"
key = gets.chomp

system ("clear")

# semitones.include?(key)

tonic = semitones.find_index(key)

scale = semitones.slice!(tonic..-1)
scale.push(semitones).flatten!

major_scale = "#{scale[0]}, #{scale[2]}, #{scale[4]}, #{scale[5]}, #{scale[7]}, #{scale[9]}, #{scale[11]}, #{scale[0]}"
relative_minor_scale = "#{scale[9]}, #{scale[11]}, #{scale[0]}, #{scale[2]}, #{scale[4]}, #{scale[5]}, #{scale[7]}, #{scale[9]}"

# major_scale = scale.values_at(0,2,4,5,7,9,11,0)
# major_scale.each do |note|
# 	print "#{note.upcase} "
# end

puts "#{key.upcase} Major Scale: #{major_scale}"
puts "#{scale[9].upcase} Relative Minor Scale: #{relative_minor_scale}"
puts
puts "Major Chords #{scale[0]}, #{scale[5]}, #{scale[7]}7"
puts "Minor Chords #{scale[2]}, #{scale[4]}, #{scale[9]}"
puts









# def scale(key)
# 	semitones = %w[a a# b c c# d d# e f f# g g#]
# 	tonic = semitones.find_index(key)

# 	semitones[tonic..-1].each do |note|
# 		puts note
# 	end

# 	semitones[0..tonic].each do |note|
# 		puts note
# 	end
# end

# puts scale(key)


