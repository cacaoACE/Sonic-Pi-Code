#CHALLENGE F: Piano Glissando starter code
use_synth :piano
num = 21

88.times do
  play(num)
  sleep 0.5
  num = num + 1
end

88.times do
  play(num)
  sleep 0.25
  num = num - 1
end

88.times do
  play(num)
  sleep 0.125
  num = num + 1
end
