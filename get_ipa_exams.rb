# coding: utf-8
require 'open-uri'

# Settings
category_code = 'es'
s_heisei = 21
e_heisei = 26
spring = true
autom  = false
# 春
if true == spring then
  season_code1 = "1"
  season_code2 = "h"
  season_jp    = "春"
end
# 秋
if true == autom then
  season_code1 = "2"
  season_code2 = "a"
  season_jp    = "秋"
end

# ダウンロード関数
def download(uri, filename)
  puts uri + " -> " + filename
  open(filename, 'wb'){|saved_file|
    open(uri, 'rb'){|read_file|
      saved_file.write(read_file.read)
    }
  }
end
#------------------------

# メインロジック
#------------------------
# url example
# H21年 春エンベデッド 午前Ⅱ
#  http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_am2_qs.pdf
# H26年 秋セキュリティ 午前Ⅱ
# http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2014h26_2/2014h26a_sc_am2_qs.pdf


url_head = "http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_"

# 指定範囲の年度のpdfを順にダウンロード
for heisei in s_heisei..e_heisei do
  ad = heisei + 1988
  # 平成23年の特別試験考慮
  code2 = season_code2
  s_jp = season_jp
  if season_jp == "春" && heisei == 23 then
    code2 = "tokubetsu"
    s_jp  = "特別"
  end
  # ベースurl
  base_url = url_head. + ad.to_s + "h" + heisei.to_s + "_" + season_code1 + "\/" + ad.to_s + "h" + heisei.to_s + code2 + "_" + category_code
  
  # ダウンロード
  download(base_url +"_am2_qs.pdf",  "H"+heisei.to_s+"_"+s_jp+"_AMⅡ_問題.pdf")
  download(base_url +"_am2_ans.pdf", "H"+heisei.to_s+"_"+s_jp+"_AMⅡ_回答.pdf")
  download(base_url +"_pm1_qs.pdf",  "H"+heisei.to_s+"_"+s_jp+"_PMⅠ_問題.pdf")
  download(base_url +"_pm1_ans.pdf", "H"+heisei.to_s+"_"+s_jp+"_PMⅠ_回答.pdf")
  download(base_url +"_pm2_qs.pdf",  "H"+heisei.to_s+"_"+s_jp+"_PMⅡ_問題.pdf")
  download(base_url +"_pm2_ans.pdf", "H"+heisei.to_s+"_"+s_jp+"_PMⅡ_回答.pdf")
end



