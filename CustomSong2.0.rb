# pound sign means sharp
# m means minor
#F#m7 chord (F#m7 notes: F# - A - C# - E. )
#Bm chord (B minor) (Bm = B minor triad (B - D - F#))
#E major chord (start chord on E and It has four sharps: F♯, G♯, C♯, D♯.)
#C#m chord (C-sharp minor) (play the notes C# - E - G#)
use_bpm 120
use_synth :piano

drum_solo = "C:/Users/maximus_alvarado/Downloads/drumsolo.wav"

live_loop :piano1 do
  6.times do
    play chord :fs3, :minor7, release: 2, amp: 1.5
    sleep 2
    play  chord :b2, :minor, release: 2, amp: 1.5
    sleep 2
    play  chord :e3, :major, release: 2, amp: 1.5
    sleep 2
    play chord :cs3, :minor, release: 2, amp: 1.5
    sleep 2
  end
  stop
end

sleep 8

melody1_keys = [:cs5,:cs5,:cs5,:cs5,:b4,:a4,:cs5]
sleep_time = [0.5,0.5,0.5,0.5,0.5,0.5,1,4]
i = 0

live_loop :melody1 do
  6.times do
    8.times do
      play (melody1_keys[i])
      sleep (sleep_time[i])
      i = i + 1
    end
    i = 0
  end
  stop
end

sleep 8

live_loop :layer3 do
  4.times do
    sleep 6
    sample :bd_boom
    sample :drum_bass_hard, amp: 0.8
  end
  stop
end
sleep 32
x = 2.5

20.times do
  play 88, amp: (x)
  x = x - 0.125
  sleep 0.1
end
sleep 2
sample :sn_dub
sleep 2
sample drum_solo
