def janken
   puts "出す手を選んでください　グー:0、パー:1、チョキ:2"
   hand_pattern = ["グー","パー","チョキ"]
   your_hand_select = gets.to_i
   opponent_hand_select = rand(3)
   puts "あなた:" + hand_pattern[your_hand_select]
   puts "相手:" + hand_pattern[opponent_hand_select]
   if your_hand_select - opponent_hand_select == 1 || your_hand_select - opponent_hand_select == -2
     return janken_winner = 1
   elsif your_hand_select == opponent_hand_select
     puts "あ〜いこ〜で..."
     return janken_winner = false
   else
     return janken_winner = 2 
   end
end

def attimuitehoi_1
  directions = ["上","左","右","下"]
  puts "あっち向いて..."
  puts "指差す方向を選んでください"
  puts "上:0、左:1、右:2、下:3"
  your_direction_select = gets.to_i
  opponent_direction_select = rand(4)
  puts "あなた:" + directions[your_direction_select]
  puts "相手:" + directions[opponent_direction_select]
  if your_direction_select == opponent_direction_select
    puts "あなたの勝ちです"
    return game_winner = true
  else
    return game_winner = false
  end
end
  
def attimuitehoi_2
  directions = ["上","左","右","下"]
  puts "あっち向いて..."
  puts "顔を向ける方向を選んでください"
  puts "上:0、左:1、右:2、下:3"
  your_direction_select = gets.to_i
  opponent_direction_select = rand(4)
  puts "あなた:" + directions[your_direction_select]
  puts "相手:" + directions[opponent_direction_select]
  if your_direction_select == opponent_direction_select
    puts "あなたの負けです"
    return game_winner = true
  else
    return game_winner = false
  end
end
  
 
 puts "最初はグー、じゃ〜んけ〜ん..."
 janken_winner = false
 game_winner = false
 
 while !game_winner
   janken_winner = janken
   case janken_winner
   when 1
     game_winner = attimuitehoi_1
   when 2
     game_winner = attimuitehoi_2
   end
 end