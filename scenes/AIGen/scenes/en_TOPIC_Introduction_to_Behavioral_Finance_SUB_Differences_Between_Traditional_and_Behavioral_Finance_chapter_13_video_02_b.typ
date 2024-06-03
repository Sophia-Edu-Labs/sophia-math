#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Investment Strategies]
#v(40pt)
#only("1-")[Traditional finance suggests ____ investment strategies.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) active]#only("2-")[#text(fill:red)[a) active]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) passive]#only("3-")[#text(fill:green)[b) passive]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) speculative]#only("4-")[#text(fill:red)[c) speculative]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) high-risk]#only("5-")[#text(fill:red)[d) high-risk]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a), active strategies, is incorrect. Traditional finance actually suggests passive investment strategies.")]
#only("3")[#voiceover("Option b), passive strategies, is the correct answer. Traditional finance indeed suggests passive investment strategies based on the assumption of market efficiency.")]
#only("4")[#voiceover("Option c), speculative strategies, is incorrect. Speculation involves high risk and is not aligned with the assumptions of traditional finance.")]
#only("5")[#voiceover("Option d), high-risk strategies, is also incorrect. Traditional finance focuses on diversification and risk reduction, not high-risk strategies.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Traditional finance is based on the efficient market hypothesis (EMH). 📈]
#v(20pt)
#only("2-")[2. EMH states that asset prices fully reflect all available information. 🌐]
#v(20pt)
#only("3-")[3. If markets are efficient, it's impossible to consistently outperform the market. 🎯]
#v(20pt)
#only("4-")[4. Therefore, traditional finance suggests passive strategies, like index investing. 📊]
#v(20pt)
#only("5-")[5. Passive strategies aim to match market returns, not beat them. 🤝]

#only("1")[#voiceover("Let's break this down step by step. First, remember that traditional finance is based on the efficient market hypothesis, or EMH.")]
#only("2")[#voiceover("EMH states that asset prices fully reflect all available information at any given time.")]
#only("3")[#voiceover("If markets are indeed efficient, as EMH suggests, it would be impossible for an investor to consistently outperform the market.")]
#only("4")[#voiceover("Therefore, traditional finance suggests passive investment strategies, such as investing in index funds that track the overall market.")]
#only("5")[#voiceover("The goal of passive strategies is to match the market returns, not to try to beat the market, which traditional finance considers to be futile.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Traditional finance is based on EMH 📈]
#v(20pt)
#only("2-")[- EMH implies market efficiency 🌐]
#v(20pt)
#only("3-")[- Market efficiency makes it impossible to consistently beat the market 🎯]
#v(20pt)
#only("4-")[- Therefore, traditional finance suggests passive investment strategies 📊]

#only("1")[#voiceover("To recap, traditional finance is based on the efficient market hypothesis.")]
#only("2")[#voiceover("EMH implies that markets are efficient, meaning that asset prices reflect all available information.")]
#only("3")[#voiceover("If markets are efficient, it's impossible for an investor to consistently outperform the market.")]
#only("4")[#voiceover("As a result, traditional finance suggests passive investment strategies that aim to match market returns rather than trying to beat the market.")]
]