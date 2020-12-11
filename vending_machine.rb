
stocks = [{name:"水",price:120},{name:"りんごジュース",price:150},{name:"コーラ",price:200}]

puts "いらっしゃいませ､飲み物のボタンを押してください"
#選ぶ処理を書く  1､飲み鋳物にインデックスを割り当てる  2.入力を受け取る処理  3.入力されたインデックスの飲み物を出力

choice = gets.to_i

if choice>=0 && choice<3
  puts "#{stocks[choice][:name]}:#{stocks[choice][:price]}円"
  puts "お金を入れてください"
  money = gets.to_i
  if money > stocks[choice][:price]
    change = money - stocks[choice][:price]
    puts "#{change}円のお返しです"
    puts "どうもありがとうございました！"
  elsif money < stocks[choice][:price]
    puts "金額が足りません､最初からやり直してください｡"
  end
else 
  puts "該当の商品は売り切れです"
end 
