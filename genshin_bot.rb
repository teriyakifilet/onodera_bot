require 'discordrb'

#トークン
require 'configatron'
require_relative 'config.rb'
bot = Discordrb::Commands::CommandBot.new token: configatron.token, client_id: configatron.botid , prefix: configatron.prefix

# 曜日取得
require "date"
day = Date.today.wday
time = Time.now
if time.hour < 5
  day -= 1
end
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
#整数      0         1        2        3        4        5        6


# 曜日ごとの天賦をお知らせする
bot.message(containing: "小野寺天賦")  do |event|
  #曜日確認分岐・日曜日
  if day == 0
    tempu_list = "日曜日だぞ？"
  else
    event.respond "今日は#{days[day]}だから、天賦はこんな感じだ。"
      #曜日確認分岐
      #月曜日・木曜日
      if day == 1 or 4
        tempu_list = "モンド：自由\n
【スクロース/クレー/バーバラ/アンバー/タルタリヤ/ディオナ/アーロイ】\n
璃月：繁栄\n
【刻晴/七七/凝光/魈/申鶴/夜蘭】\n
稲妻：浮世\n
【宵宮/珊瑚宮心海/トーマ/鹿野院平蔵】\n
スメール：忠言\n
【ティナリ/セノ/キャンディス/ファルザン】"
      #火曜日・金曜日
      elsif day == 2 or 5
        tempu_list = "モンド：抗争\n
【モナ/ノエル/ベネット/レザー/ディルック/ジン/エウルア】\n
璃月：勤労\n
【重雲/香菱/甘雨/胡桃/♡楓原万葉♡/雲菫/ヨォーヨ】\n
稲妻：風雅\n
【神里綾華/九条裟羅/荒瀧一斗/神里綾人/久岐忍】\n
スメール：創意\n
【ドリー/ナヒーダ/レイラ/アルハイゼン】"
      #水曜日・土曜日
      elsif day == 3 or 6
        tempu_list = "モンド：詩文\n
【フィッシュル/ウェンティ/ガイア/リサ/アルベド/ロサリア】\n
璃月：黄金\n
【行秋/北斗/鍾離/辛炎/煙緋】\n
稲妻：天光\n
【早柚/雷電将軍/ゴロー/八重神子】\n
スメール：篤行\n
【コレイ/ニィロウ/放浪者/ディシア】"
      end
    event.respond "#{tempu_list}"
  end
end

# 曜日ごとの武器突破をお知らせする
bot.message(containing: "小野寺武器") do |event|
  #曜日確認分岐・日曜日
  if day == 0
    tempu_list = "日曜日だぞ？"
  else
    event.respond "今日は#{days[day]}だから、天賦はこんな感じだ。"
      #曜日確認分岐
      #月曜日・木曜日
      if day == 1 or 4
        tempu_list = "モンド：自由\n
                    　　【スクロース/クレー/バーバラ/アンバー/タルタリヤ/ディオナ/アーロイ】\n
                      璃月：繁栄\n
                      　【刻晴/七七/凝光/魈/申鶴/夜蘭】\n
                      稲妻：浮世\n
                      　【宵宮/珊瑚宮心海/トーマ/鹿野院平蔵】\n
                      スメール：忠言\n
                      　【ティナリ/セノ/キャンディス/ファルザン】"
      #火曜日・金曜日
      elsif day == 2 or 5
        tempu_list = "モンド：抗争\n
                    　　【モナ/ノエル/ベネット/レザー/ディルック/ジン/エウルア】\n
                      璃月：勤労\n
                      　【重雲/香菱/甘雨/胡桃/♡楓原万葉♡/雲菫/ヨォーヨ】\n
                      稲妻：風雅\n
                      　【神里綾華/九条裟羅/荒瀧一斗/神里綾人/久岐忍】\n
                      スメール：創意\n
                      　【ドリー/ナヒーダ/レイラ/アルハイゼン】"
      #水曜日・土曜日
      elsif day == 3 or 6
        tempu_list = "モンド：詩文\n
                    　　【フィッシュル/ウェンティ/ガイア/リサ/アルベド/ロサリア】\n
                      璃月：黄金\n
                      　【行秋/北斗/鍾離/辛炎/煙緋】\n
                      稲妻：天光\n
                      　【早柚/雷電将軍/ゴロー/八重神子】\n
                      スメール：篤行\n
                      　【コレイ/ニィロウ/放浪者/ディシア】"
      end
    event.respond "#{tempu_list}"
  end
end

# 週ボス素材を使う人を教えてくれる
  # 淑女
  bot.message(containing: "小野寺淑女素材") do |event|
    event.respond "淑女の素材を使うやつが知りたいのか？\n
溶滅の刻（おはな）： アーロイ/雷電将軍/ゴロー\n
獄炎の蝶（ちょうちょ）： 珊瑚宮心海/トーマ/申鶴\n
灰燼の心（しんぞう）： 雲菫/九条裟羅/荒瀧一斗"
  end

  # 雷電
  bot.message(containing: "小野寺雷電素材") do |event|
    event.respond "雷電将軍の素材を使うやつが知りたいのか？\n
凶将の手眼（おてて）： 神里綾人/セノ\n
禍神の禊涙（ほろり）： 九岐忍/キャンディス/コレイ/ニィロウ\n
万劫の真意（おうぎ）： 鹿野院平蔵/八重神子/ティナリ"
  end

  # スカラマシュ
  bot.message(containing: "小野寺スカラマシュ素材") do |event|
    event.respond "スカラマシュの素材を使うやつが知りたいのか？\n
傀儡の系（ひも）： ナヒーダ/ファルザン\n
無心の淵鏡（でんでんだいこ）： レイラ/アルハイゼン\n
空行の虚鈴（たま）： 放浪者/ヨォーヨ"
  end




# たかし
bot.command :momo do |event|
  event.respond "アルハイゼンとたかしはこの夏━━。"
end

bot.run
