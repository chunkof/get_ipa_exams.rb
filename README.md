IPA過去問一括ダウンロード
==========

IPAから情報処理試験の過去問(問題&回答)を一括ダウンロードします。

## Usage
デフォルトでは「エンベデッドシステムスペシャリスト」の過去問をダウンロードするようになっています。

### input

    >ruby get_ipa_exams.rb

### output

    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_am2_qs.pdf -> H21_春_AMⅡ_問題.pdf
    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_am2_ans.pdf -> H21_春_AMⅡ_回答.pdf
    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_pm1_qs.pdf -> H21_春_PMⅠ_問題.pdf
    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_pm1_ans.pdf -> H21_春_PMⅠ_回答.pdf
    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_es_pm2_qs.pdf -> H21_春_PMⅡ_問題.pdf
    ～
    http://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2014h26_1/2014h26h_es_pm2_ans.pdf -> H26_春_PMⅡ_回答.pdf

## Option

コードの以下のあたりを弄れば、他の試験もダウンロード可能です（多分）

    # Settings
    category_code = 'es'
    s_heisei = 21
    e_heisei = 26
    spring = true
    autom  = false

