puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

def janken
  player_hand = gets.to_i
  program_hand = rand(3)

  if !(player_hand == 0 || player_hand == 1 || player_hand == 2 || player_hand == 3)
    puts "不正な値です。0~3の数字を入力してください。"
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
  end

  puts "ホイ！"
  jankens = ["グー","チョキ","パー","戦わない"]

  puts "-------------------"
  puts "あなた：#{jankens[player_hand]}を出しました"
  puts "相手：#{jankens[program_hand]}を出しました"
  puts "-------------------"

  if player_hand == 3 || program_hand == 3
    puts "『戦わない』が実行されました。ゲームを終了します。"
    exit
  elsif player_hand == program_hand
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    janken
  elsif (player_hand == 0 && program_hand ==1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ち"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    @case = "win"
    acchimuite
  else
    puts "あなたの負け"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    @case = "lose"
    acchimuite
  end
end

def acchimuite
  player_face = gets.to_i
  program_face = rand(3)

  if !(player_face == 0 || player_face == 1 || player_face == 2 || player_face == 3)
    puts "不正な値です。0~3の数字を入力してください。"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    player_face = gets.to_i
  end

  puts "ホイ！"
  acchimuites = ["上","下","左","右"]

  puts "-------------------"
  puts "あなた：#{acchimuites[player_face]}"
  puts "相手：#{acchimuites[program_face]}"
  puts "-------------------"

  if @case == "win"
    case
    when player_face == program_face
      puts "あなたの勝ちです"
      exit
      true
    else
      puts "じゃんけん..."
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
      janken
      false
    end
  end

  if @case == 'lose'
    case
    when player_face == program_face
      puts "あなたの負けです"
      exit
      true
    else
      puts "じゃんけん..."
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
      janken
      false
    end
  end
end

loop do
  f1 = janken
  if f1
    loop do
      f2 = acchimuite
      if f2
        break
      end
    end
  end
end
