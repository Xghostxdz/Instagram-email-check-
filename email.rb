require 'httparty'

def check(user)
  url = 'https://www.instagram.com/api/v1/web/accounts/account_recovery_send_ajax/'
  headers = {
    'authority' => 'www.instagram.com',
    'accept' => '*/*',
    'accept-language' => 'fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7',
    'content-type' => 'application/x-www-form-urlencoded',
    'cookie' => 'csrftoken=X8Dh7gSlwZ4YAp-htrw-9K; dpr=2; mid=ZvWBhgABAAGdpx3vRgddKoJuli2v; datr=hoH1ZikF7ab3stuprNS81YoK; ig_did=3169F6E5-FA75-4AB2-A301-4FE950A3165D; ig_nrcb=1; wd=360x630',
    'origin' => 'https://www.instagram.com',
    'referer' => 'https://www.instagram.com/accounts/password/reset/?next=%2F',
    'sec-ch-prefers-color-scheme' => 'light',
    'sec-ch-ua' => '"Not-A.Brand";v="99", "Chromium";v="124"',
    'sec-ch-ua-full-version-list' => '"Not-A.Brand";v="99.0.0.0", "Chromium";v="124.0.6327.4"',
    'sec-ch-ua-mobile' => '?1',
    'sec-ch-ua-model' => '"CPH1901"',
    'sec-ch-ua-platform' => '"Android"',
    'sec-ch-ua-platform-version' => '"8.1.0"',
    'sec-fetch-dest' => 'empty',
    'sec-fetch-mode' => 'cors',
    'sec-fetch-site' => 'same-origin',
    'user-agent' => 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36',
    'x-asbd-id' => '129477',
    'x-csrftoken' => 'X8Dh7gSlwZ4YAp-htrw-9K',
    'x-ig-app-id' => '1217981644879628',
    'x-ig-www-claim' => '0',
    'x-instagram-ajax' => '1016896181',
    'x-requested-with' => 'XMLHttpRequest'
  }

  body = {
    'email_or_username' => user
  }

  res = HTTParty.post(url, headers: headers, body: body)

  # تحقق من محتوى الاستجابة
  if res.body.include?("Aucun utilisateur trouvé") 
    puts "bad"
  else 
    puts "good"
    # حفظ البريد الإلكتروني في ملف good.txt
    File.open("good.txt", "a") do |file|
      file.puts(user)
    end
  end
end

loop do
  letters = ('a'..'z').to_a
  rand_letters = letters.sample(4).join
  rand_number = rand(1..9) # توليد رقم عشوائي بين 1 و 9
  user = "#{rand_letters}#{rand_number}@gmail.com" # إنشاء عنوان بريد إلكتروني عشوائي
  check(user) # استدعاء دالة check
end

