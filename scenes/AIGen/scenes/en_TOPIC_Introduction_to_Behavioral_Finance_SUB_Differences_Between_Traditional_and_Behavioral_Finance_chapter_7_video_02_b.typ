#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[The Efficient Market Hypothesis (EMH)]
#v(40pt)
The EMH states that it is ____ to consistently achieve higher returns than the market average.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) easy]#only("2-")[#text(fill:red)[a) easy]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) impossible]#only("3-")[#text(fill:green)[b) impossible]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) likely]#only("4-")[#text(fill:red)[c) likely]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) common]#only("5-")[#text(fill:red)[d) common]]
#v(40pt)

#only("1")[#voiceover("Great job! You've selected the correct answer.")]
#only("2")[#voiceover("The option 'easy' is incorrect. According to the Efficient Market Hypothesis, it's not easy to consistently beat the market.")]
#only("3")[#voiceover("'Impossible' is indeed the correct answer. The EMH suggests that it's impossible to consistently outperform the market average.")]
#only("4")[#voiceover("The option 'likely' is also incorrect. The EMH implies that it's unlikely, not likely, to consistently achieve higher returns than the market average.")]
#only("5")[#voiceover("Lastly, 'common' is incorrect as well. Consistently beating the market is not a common occurrence according to the EMH.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1. The Efficient Market Hypothesis (EMH) is a cornerstone of traditional finance. 📜]
#v(20pt)
#only("2-")[2. It states that asset prices fully reflect all available information at any given time. 💡]
#v(20pt)
#only("3-")[3. This implies that markets are efficient and it's impossible to "beat the market" consistently. 🏆]

#only("1")[#voiceover("Let's break this down step by step. The Efficient Market Hypothesis, or EMH, is a fundamental concept in traditional finance.")]
#only("2")[#voiceover("The EMH states that asset prices fully reflect all available information at any given time.")]
#only("3")[#voiceover("This implies that markets are efficient, and it's impossible to consistently 'beat the market' or achieve returns higher than the market average.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1. If markets are efficient, prices always reflect fair value, and no investor can consistently achieve returns greater than the market average. 📈]
#v(20pt)
#only("2-")[2. Therefore, according to the EMH, it is "impossible" to consistently outperform the market. ❌]

#only("1")[#voiceover("If markets are efficient, prices always reflect fair value. No investor can consistently achieve returns greater than the market average, as any information that could give them an edge is already incorporated into prices.")]
#only("2")[#voiceover("Therefore, according to the EMH, it is 'impossible' to consistently outperform the market. The correct answer is b) impossible.")]
]