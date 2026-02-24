use_bpm 136
use_synth :piano

define :piano_notes do |x|
  play:E3, amp: x
  sleep 1
  play:B3, amp: x
  play:E4, amp: x
  sleep 1
  play:B3, amp: x
  sleep 1
  play:E4, amp: x
  sleep 1
end
define :measure_28 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
define :measure_346 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end
define :measure_57 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end
define :beat1 do
  play 60
  sleep 0.5
  play 62
  sleep 0.5
  sample :ambi_choir
end

live_loop :layer_2 do
  play 30
  sleep 1
end
sleep 4
live_loop :layer_3 do
  play 20
  sleep 1
end
live_loop:background_notes do
  piano_notes 0.25
  piano_notes 0.5
  piano_notes 0.75
  5.times do
    piano_notes 1
  end
  stop
end
# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

measure_28
2.times do
  measure_346
end
measure_57
measure_346
measure_57
measure_28
sleep 8

beat1
beat1
sleep 2
beat1
sleep 2
beat1
beat1
