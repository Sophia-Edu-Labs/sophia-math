#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Traditional Finance Assumptions]
#v(40pt)
#only("1-")[What does traditional finance assume about investors?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) irrational]#only("2-")[#text(fill:red)[a) irrational]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) rational]#only("3-")[#text(fill:green)[b) rational]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) emotional]#only("4-")[#text(fill:red)[c) emotional]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) unpredictable]#only("5-")[#text(fill:red)[d) unpredictable]]
#only("1")[#voiceover("Not quite, but let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Traditional finance does not assume that investors are irrational.")]
#only("3")[#voiceover("Option b) is the correct answer. Traditional finance assumes that investors are rational, meaning they make decisions based on maximizing their utility.")]
#only("4")[#voiceover("Option c) is incorrect. Traditional finance does not assume that investors are emotional in their decision making.")]
#only("5")[#voiceover("Option d) is also incorrect. Traditional finance assumes that investor behavior is predictable, based on the assumption of rationality.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Assumptions of Traditional Finance]
#v(40pt)
#only("1-")[Traditional finance is based on two key assumptions:]
#v(20pt)
#only("2-")[1. Investors are rational 🧠]
#v(10pt)
#only("3-")[   - Make decisions to maximize utility]
#v(10pt) 
#only("4-")[   - Use all available information]
#v(20pt)
#only("5-")[2. Markets are efficient 📈]
#v(10pt)
#only("6-")[   - Asset prices reflect all available information]
#v(10pt)
#only("7-")[   - Impossible to consistently beat the market]
#only("1")[#voiceover("Let's dive deeper into the assumptions of traditional finance.")]
#only("2")[#voiceover("The first key assumption is that investors are rational.")]
#only("3")[#voiceover("This means that investors make decisions with the goal of maximizing their utility or satisfaction.")]
#only("4")[#voiceover("Rational investors are assumed to use all available information when making investment decisions.")]
#only("5")[#voiceover("The second key assumption of traditional finance is that markets are efficient.")]
#only("6")[#voiceover("In an efficient market, asset prices are believed to fully reflect all available information.")]
#only("7")[#voiceover("As a result, traditional finance suggests that it is impossible to consistently achieve returns greater than the market average.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications for Investors]
#v(40pt)
#only("1-")[If investors are rational and markets are efficient:]
#v(20pt)
#only("2-")[- Investors cannot consistently beat the market 📉]
#v(20pt)
#only("3-")[- Passive investing strategies are favored 🎯]
#v(20pt)
#only("4-")[- Diversification is key to managing risk 🗂️]
#only("1")[#voiceover("These assumptions have important implications for investors.")]
#only("2")[#voiceover("If investors are rational and markets are efficient, it suggests that investors cannot consistently achieve returns higher than the market average.")]
#only("3")[#voiceover("As a result, traditional finance tends to favor passive investing strategies, such as investing in index funds that track the overall market.")]
#only("4")[#voiceover("Additionally, diversification is seen as a key tool for managing risk, as it is not possible to consistently pick individual winning investments in an efficient market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Traditional finance assumes investors are rational 🧠]
#v(20pt)
#only("2-")[- It also assumes markets are efficient 📈]
#v(20pt)
#only("3-")[- These assumptions have implications for investment strategies 💰]
#v(20pt)
#only("4-")[- Behavioral finance challenges these assumptions 🔍]
#only("1")[#voiceover("To summarize, traditional finance is built on the assumptions that investors are rational...")]
#only("2")[#voiceover("...and that markets are efficient.")]
#only("3")[#voiceover("These assumptions lead to specific implications for how investors should approach the market, favoring passive strategies and diversification.")]
#only("4")[#voiceover("However, it's important to note that behavioral finance challenges these assumptions, suggesting that psychological factors and market inefficiencies can also impact investor behavior and market outcomes.")]
]