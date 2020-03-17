# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー\n1:チョキ\n2:パー"
      input_hand = gets.chomp
       while true
        if input_hand == "0" || input_hand == "1" ||input_hand == "2"
          return input_hand.to_i
        else
           puts "もう一度数字を入力してください。"
           puts "0:グー\n1:チョキ\n2:パー"
           input_hand = gets.chomp
        end
       end
  end
end
# 敵が「0 ~ 2」の値をランダムで生成するロジックを書きます。
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
     puts "相手の手は#{janken[enemy_hand]}です。"
    if player_hand == enemy_hand
      puts "あいこ"
      return true
    elsif  (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです"
      return false
    else
      puts "あなたの負けです"
      return false
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true

while next_game do
  next_game = janken.pon(player.hand, enemy.hand)
end
