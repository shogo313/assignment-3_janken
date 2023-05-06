#じゃんけん
def janken
  puts "じゃんけん・・・"
  hands = ["グー", "チョキ", "パー"]
  janken_repeat = true

  while janken_repeat
    puts "グー[0],チョキ[1],パー[2]"
    puts "----------------------------------------"
    your_hand = gets.to_i
    cpu_hand = rand(3)
    puts "あなた:#{hands[your_hand]}"
    puts "相手:#{hands[cpu_hand]}"
    puts "----------------------------------------"

    if your_hand == cpu_hand
      puts "あいこで・・・"
    elsif your_hand == 0 && cpu_hand == 1 \
    || your_hand == 1 && cpu_hand == 2 \
    || your_hand == 2 && cpu_hand == 0
      janken_repeat = false
      return "you_win"
    else
      janken_repeat = false
      return "you_lose"
    end
  end
end

#あっちむいてほい
def hoi(hoi_winner)
  puts 'あっちむいて・・・'
  puts '上[0], 下[1], 左[2], 右[3]'
  puts "----------------------------------------"
  directions = ["上", "下", "左", "右"]
  your_direction = gets.to_i
  cpu_direction = rand(4)
  puts "あなた:#{directions[your_direction]}"
  puts "相手:#{directions[cpu_direction]}"
  puts "----------------------------------------"

  if your_direction == cpu_direction
    puts "#{hoi_winner}の勝ち"
    puts "----------------------------------------"
  else
   return "back_janken"
  end
end


#jankenメソッドとhoiメソッドの切り替え
janken_result = janken

hoi_result =
  if janken_result == "you_win"
    hoi("あなた")
  elsif janken_result == "you_lose"
    hoi("相手")
  end

while hoi_result == "back_janken"
  case janken
  when "you_win"
    hoi_result = hoi("あなた")
  when "you_lose"
    hoi_result = hoi("相手")
  end
end


