(defvar quotes 
  '("\"You can do anything, but not everything.\"       - David Allen"
    "\"Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.\"    - Antoine de Saint-Exupéry"
    "\"The richest man is not he who has the most, but he who needs the least.\"    - Unknown Author"
    "\"You miss 100 percent of the shots you never take.\"    - Wayne Gretzky"
    "\"Courage is not the absence of fear, but rather the judgement that something else is more important than fear.\"    - Ambrose Redmoon"
    "\"You must be the change you wish to see in the world.\"    - Gandhi"
    "\"When hungry, eat your rice; when tired, close your eyes. Fools may laugh at me, but wise men will know what I mean.\"    - Li-Chi"
    "\"To the man who only has a hammer, everything he encounters begins to look like a nail.\"    - Abraham Maslow"
    "\"We are what we repeatedly do; excellence, then, is not an act but a habit.\"    - Aristotle"
    "\"A wise man gets more use from his enemies than a fool from his friends.\"    - Baltasar Gracian"
    "\"Do not seek to follow in the footsteps of the men of old; seek what they sought.\"    - Basho"
    "\"Everyone is a genius at least once a year. The real geniuses simply have their bright ideas closer together.\"    - Georg Christoph Lichtenberg"
    "\"What we think, or what we know, or what we believe is, in the end, of little consequence. The only consequence is what we do.\"    - John Ruskin"
    "\"The real voyage of discovery consists not in seeking new lands but seeing with new eyes\".    - Marcel Proust"
    "\"Work like you don’t need money, love like you’ve never been hurt, and dance like no one’s watching.\"    - Unknown Author"
    "\"Even if you’re on the right track, you’ll get run over if you just sit there.\"    - Will Rogers"
    "\"People often say that motivation doesn’t last. Well, neither does bathing - that’s why we recommend it daily.\"    - Zig Ziglar"
    "\"Before I got married I had six theories about bringing up children; now I have six children and no theories.\"    - John Wilmot"
    "\"What the world needs is more geniuses with humility, there are so few of us left.\"    - Oscar Levant"
    "\"Always forgive your enemies; nothing annoys them so much.\"    - Oscar Wilde"
    "\"When you go into court you are putting your fate into the hands of twelve people who weren’t smart enough to get out of jury duty.\"    - Norm Crosby"
    "\"Those who believe in telekinetics, raise my hand.\"    - Kurt Vonnegut"
    "\"My pessimism extends to the point of even suspecting the sincerity of the pessimists.\"    - Jean Rostand"
    "\"Sometimes I worry about being a success in a mediocre world.\"    - Lily Tomlin"
    "\"I quit therapy because my analyst was trying to help me behind my back.\"    - Richard Lewis"
    "\"If the lessons of history teach us anything it is that nobody learns the lessons that history teaches us.\"    - Anon"
    "\"When I was a boy I was told that anybody could become President. Now I’m beginning to believe it.\"    - Clarence Darrow"
    "\"Laughing at our mistakes can lengthen our own life. Laughing at someone else’s can shorten it.\"    - Cullen Hightower"
    "\"There are many who dare not kill themselves for fear of what the neighbors will say.\"    - Cyril Connolly"
    "\"There’s so much comedy on television. Does that cause comedy in the streets?\"    - Dick Cavett"
    "\"All men are frauds. The only difference between them is that some admit it. I myself deny it.\"    - H. L. Mencken"
    "\"I don’t mind what Congress does, as long as they don’t do it in the streets and frighten the horses.\"    - Victor Hugo"
    "\"I took a speed reading course and read ‘War and Peace’ in twenty minutes. It involves Russia.\"    - Woody Allen"
    "\"The person who reads too much and uses his brain too little will fall into lazy habits of thinking.\"    - Albert Einstein"
    "\"Believe those who are seeking the truth. Doubt those who find it.\"    - André Gide"
    "\"It is the mark of an educated mind to be able to entertain a thought without accepting it.\"    - Aristotle"
    "\"I’d rather live with a good question than a bad answer.\"    - Aryeh Frimer"
    "\"We learn something every day, and lots of times it’s that what we learned the day before was wrong.\"    - Bill Vaughan"
    "\"I have made this letter longer than usual because I lack the time to make it shorter.\"    - Blaise Pascal"
    "\"Don’t ever wrestle with a pig. You’ll both get dirty, but the pig will enjoy it.\"    - Cale Yarborough"
    "\"An inventor is simply a fellow who doesn’t take his education too seriously.\"    - Charles F. Kettering"
    "\"Asking a working writer what he thinks about critics is like asking a lamppost how it feels about dogs.\"    - Christopher Hampton"
    "\"Better to write for yourself and have no public, than to write for the public and have no self.\"    - Cyril Connolly"
    "\"Never be afraid to laugh at yourself, after all, you could be missing out on the joke of the century.\"    - Dame Edna Everage"
    "\"I am patient with stupidity but not with those who are proud of it.\"    - Edith Sitwell"
    "\"The cure for boredom is curiosity. There is no cure for curiosity.\"    - Ellen Parr"
    "\"Advice is what we ask for when we already know the answer but wish we didn’t.\"    - Erica Jong"
    "\"Some people like my advice so much that they frame it upon the wall instead of using it.\"    - Gordon R. Dickson"
    "\"The trouble with the rat race is that even if you win, you’re still a rat.\"    - Lily Tomlin"
    "\"Never ascribe to malice, that which can be explained by incompetence.\"    - Napoleon (Hanlon’s Razor)"
    "\"Imagination was given to man to compensate him for what he is not, and a sense of humor was provided to console him for what he is.\"    - Oscar Wilde"
    "\"When a person can no longer laugh at himself, it is time for others to laugh at him.\"    - Thomas Szasz"
    "1.天才是百分之一的靈感加百分之九十九的汗水。——愛迪生"
    "2.一個人幾乎可以在任何他懷有無限熱忱的事情上成功。——查爾斯‧史考伯"
    "3.深窺自己的心，而後發覺一切的奇蹟在你自己。——培根"
    "4.堅強的信念能贏得強者的心，並使他們變得更堅強。——白哲特"
    "5.流水在碰到底處時才會釋放活力。——歌德"
    "6.那腦袋裡的智慧，就像打火石裡的火花一樣，不去打它是不肯出來的。——莎士比亞"
    "7.多數人都擁有自己不瞭解的能力和機會，都有可能做到未曾夢想的事情。——戴爾‧卡耐基"
    "8.勿問成功的秘訣為何，且盡全力做你應該做的事吧。——美華納"
    "9.苦難有如烏雲，遠望去但見墨黑一片，然而身臨其下時不過是灰色而已。——裡希特"
    "10.幸運並非沒有恐懼和煩惱；厄運也決非沒有安慰和希望。——培根"
    "11.不幸可能成為通向幸福的橋樑。——日本諺語"
    "12.苦難磨煉一些人，也毀滅另一些人。——富勒"
    "13.烈火試真金，逆境試強者。——塞內加"
    "14.人生猶如一本書，愚蠢者草草翻過，聰明人細細閱讀。為何如此？因為他們只能讀它一次。——保羅"
    "15.過去屬於死神，未來屬於你自己。——雪萊"
    "16.不要慨嘆生活的痛苦！慨嘆是弱者。——高爾基"
    "17.不應當急於求成，應當去熟悉自己的研究對象，鍥而不捨，時間會成全一切。凡事開始最難，然而更難的是何以善終。——莎士比亞"
    "18.如煙往事俱忘卻，心底無私天地寬。——陶鑄"
    "19.生活真像這杯濃酒，不經三番五次的提煉呵，就不會這樣可口！——郭小川"
    "20.人生的價值，即以其人對於當代所做的工作為尺度。——徐瑋"
    "21.富貴不淫貧賤樂，男兒到此是豪雄。——程顥"
    "22.逆境給人寶貴的磨煉機會。只有經得起環境考驗的人，才能算是真正的強者。自古以來的偉人，大多是抱著不屈不撓的精神，從逆境中掙扎奮鬥過來的。——松下幸之助"
    "23.路是腳踏出來的，歷史是人寫出來的。人的每一步行動都在書寫自己的歷史。——吉鴻昌"
    "24.真正的人生，只有在經過艱難卓絕的鬥爭之後才能實現。——塞涅卡"
    "25.當一個人用工作去迎接光明，光明很快就會來照耀著他。——馮學峰"
    "26.人在身處逆境時，適應環境的能力實在驚人。人可以忍受不幸，也可以戰勝不幸，因為人有著驚人的潛力，只要立志發揮它，就一定能渡過難關。——卡耐基"
    "27.倘若你想達成目標，便得在心中描繪出目標達成後的景象；那麼，夢想必會成真。——英國當代動機大師"
    "理查丹尼"
    "28.一個人的人生幸福，只靠道德方面的努力是不夠的，我們必須經常描繪自己將來的幸福形象，並依靠萬能的潛意識來幫忙實現。潛意識一旦接受事情後，就會想盡辦法去實現它，之後你只要安心等待,就可以了。——世界著名研究精神法則.潛意識權威"
    "喬瑟夫‧摩菲"
    "29.每一個人都具有特殊能力的電路，但大多數人因為不知道，所以無法充分利用，就好像懷重寶而不知其在；只要能發掘出這項秘藏的能力，人類的能力將會完全大改觀，也能展現出超乎常人的能力。——超右腦革命作者.日本科學會顧問"
    "七田真"
    "30.我這一生不曾工作過，我的幽默和偉大的著作都來自於求助潛意識心智無窮盡的寶藏。——馬克吐溫"
    "31.那些最能幹的人，往往是那些即使在最絕望的環境裡，仍不斷傳送成功意念的人。他們不但鼓舞自己，也振奮他人，不達成功，誓不休止。——安東尼‧羅賓"
    "32.靈感並不是在邏輯思考的延長線上產生，而是在破除邏輯或常識的地方才有靈感。——愛因斯坦"
    "33.不因幸運而固步自封，不因厄運而一蹶不振。真正的強者，善於從順境中找到陰影，從逆境中找到光亮，時時校準自己前進的目標。——易卜生"
    "34.每一種挫折或不利的突變，是帶著同樣或較大的有利的種子。——愛默生"
    "35.什麼叫做失敗？失敗是到達較佳境地的第一步。——菲裡浦斯"
    "36.失敗是堅忍的最後考驗。——俾斯麥"
    "37.對於不屈不撓的人來說，沒有失敗這回事。——俾斯麥"
    "38.一次失敗，只是證明我們成功的決心還夠堅強。——博維"
    "39.失敗也是我需要的，它和成功對我一樣有價值。——愛迪生"
    "40.我們關心的，不是你是否失敗了，而是你對失敗能否無怨。——林肯"
    "41.什麼叫做失敗？失敗是到達較佳境地的第一步。——菲裡浦斯"
    "42.沒有人事先瞭解自己到底有多大的力量，直到他試過以後才知道。——歌德"
    "43.對於不屈不撓的人來說，沒有失敗這回事。——俾斯麥"
    "44.要成功不需要什麼特別的才能，只要把你能做的小事做得好就行了。——維龍"
    "45.成功的唯一秘訣——堅持最後一分鐘。——柏拉圖"
    "46.只有勝利才能生存，只有成功才有代價，只有耕耘才有收穫。——佚名"
    "47.只有把抱怨環境的心情，化為上進的力量，才是成功的保證。——羅曼‧羅蘭"
    "48.勝利者往往是從堅持最後五分鐘的時間中得來成功。——牛頓"
    "49.如果你問一個善於溜冰的人怎樣獲得成功時，他會告訴你：「跌倒了，爬起來」，這就是成功。——牛頓"
    "50.本來無望的事，大膽嘗試，往往能成功。——莎士比亞"
    "51.成大事不在於力量多少，而在能堅持多久。"
    "52.成名每在窮苦日，敗事多因得意時。"
    "53.命運總是光臨在那些有準備的人身上。"
    "54.思想→觀念→行動→習慣→個性→命運。"
    "55.一個人的態度，決定他的高度。"
    "56.唯有行動才能改造命運。"
    "57.機不可失，時不再來。"
    "58.可以解決的事情不用擔心；不能解決的事情擔心也沒用。"
    "59.人要有足夠的壓力，才能超越顛峰。"
    "60.少許的主動就可以使你生活中的運氣大增。"
    "61.成功無須解釋，失敗卻有許多託辭。"
    "62.行動未必總能帶來幸福，但沒有行動一定沒有幸福。"
    "63.真正偉大的人，是由行動使他人見識其不凡之處。"
    "64.不保護就是一種保護，過度保護反而是一種傷害。"
    "65.世上無難事，只要肯登攀。"
    "66.沒有所謂幸運或厄運，每件事情有因必有果。"
    "67.自我要求是邁向成功的捷徑，恆心是離成功最短的路。"
    "68.偉人與常人最大的差別就在於珍惜時間。"
    "69.成功的關鍵在於我們對失敗的反應。"
    "70.即使行動導致錯誤，卻也帶來了學習與成長；不行動則是停滯與萎縮。"
    "71.失敗只是代表你的努力還不夠。"
    "72.你腦子裡東西的多寡，就關係著你將來的前途。"
    "73.只要熱情猶在，哪怕青春消逝。"
    "74.一個人能力當中所蘊藏的潛能，遠超過自己想像以外。"
    "75.事情做到完美，就是藝術。"
    "76.自棄者扶不起，自強者擊不倒。"
    "77.再長的路，一步步也能走完，再短的路，不邁開雙腳也無法到達。"
    "78.世上沒有絕望的處境，只有對處境絕望的人。"
    "79.要冒一險！整個生命就是一場冒險，走得最遠的人常是願意去做.願意去冒險的人。"
    "80.知識給人重量，成就給人光彩，大多數人只是看到了光彩，而不去稱量重量。"
    "81.世界會向那些有目標和遠見的人讓路。"
    "82.旁觀者的姓名永遠爬不到比賽的計分板上。"
    "83.不為失敗找理由，要為成功找方法。"
    "84.偉人之所以偉大，是因為他與別人共處逆境時，別人失去了信心，他卻下決心實現自己的目標。"
    "85.每一發奮努力的背後，必有加倍的賞賜。"
    "86.大多數人想要改造這個世界，但卻罕有人想改造自己。"
    "87.任何的限制，都是從自己的內心開始的。忘掉失敗，不過要牢記失敗中的教訓。"
    "88.不是境況造就人，而是人造就境況。"
    "89.人之所以能，是相信能。"
    "90.凡真心嘗試助人者，沒有不幫到自己的。"
    "91.一個人最大的破產是絕望，最大的資產是希望。"
    "92.行動是成功的階梯，行動越多，登得越高。"
    "93.環境永遠不會十全十美，消極的人受環境控制，積極的人卻控制環境。"
    "94.自己打敗自己的遠遠多於比別人打敗的。"
    "95.這個世界並不是掌握在那些嘲笑者的手中，而恰恰掌握在能夠經受得住嘲笑與批評忍不斷往前走的人手中。"
    "96.生命之燈因熱情而點燃，生命之舟因拚搏而前行。"
    "97.擁有夢想只是一種智力，實現夢想才是一種能力。"
    "98.人的才華就如海綿的水，沒有外力的擠壓，它是絕對流不出來的。流出來後，海綿才能吸收新的源泉。"
    "99.只有不斷找尋機會的人才會及時把握機會。"
    "100.只要功夫深，鐵杵磨成針。") 
  "Some quotes taken from https://litemind.com/best-famous-quotes/")




(switch-to-buffer "*scratch*")
(insert (nth (random (length quotes)) quotes))
(insert "\n\n")
(insert "Yule, you are such a good person!  \nHope your life is getting better and better!!!\n")
(provide 'yuleshow-welcome)
