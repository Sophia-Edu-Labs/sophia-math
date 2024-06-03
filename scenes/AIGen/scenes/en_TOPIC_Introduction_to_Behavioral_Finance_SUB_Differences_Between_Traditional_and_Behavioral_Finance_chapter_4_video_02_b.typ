#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Psychological Biases]
#v(40pt)
#only("1-")[Which of the following is a psychological bias identified in behavioral finance?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Overconfidence]#only("2-")[#text(fill:green)[a) Overconfidence]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Rationality]#only("3-")[#text(fill:red)[b) Rationality]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Market efficiency]#only("4-")[#text(fill:red)[c) Market efficiency]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Utility maximization]#only("5-")[#text(fill:red)[d) Utility maximization]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution...")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Overconfidence. Overconfidence is indeed a psychological bias identified in behavioral finance. It refers to the tendency of investors to overestimate their knowledge or ability to predict market movements.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Rationality is incorrect. Rationality is an assumption in traditional finance, not a psychological bias identified in behavioral finance.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Market efficiency is also incorrect. Market efficiency is another assumption in traditional finance, stating that asset prices fully reflect all available information at any given time.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Utility maximization is incorrect as well. Utility maximization is the idea that investors make decisions to maximize their utility or satisfaction, which is an assumption in traditional finance, not a psychological bias.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🧠]
#v(40pt)
#only("1-")[- Investors overestimate their knowledge or ability to predict market movements 📈]
#v(20pt)
#only("2-")[- Example: Believing you can consistently outperform the market 🏆]
#v(20pt)
#only("3-")[- Can lead to excessive trading and higher risk-taking 🎲]
#v(20pt)
#only("4-")[- Identified by behavioral finance as a common psychological bias 🔍]

#only("1")[#voiceover("Overconfidence bias occurs when investors overestimate their knowledge or ability to predict market movements.")]
#only("2")[#voiceover("For example, an overconfident investor might believe they can consistently outperform the market, even though research shows this is extremely difficult to do.")]
#only("3")[#voiceover("Overconfidence can lead to excessive trading and higher risk-taking, as investors may make bold moves based on their inflated sense of their own abilities.")]
#only("4")[#voiceover("Behavioral finance has identified overconfidence as one of the most common psychological biases that affect investor behavior and market outcomes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs. Traditional Finance]
#v(40pt)
#only("1-")[- Traditional finance assumes investor rationality 🤔]
#v(20pt)
#only("2-")[- Behavioral finance recognizes psychological biases 🧠]
#v(20pt)
#only("3-")[- Overconfidence is one of many biases studied in behavioral finance 📚]
#v(20pt)
#only("4-")[- Understanding these biases can help explain market anomalies 🔍]

#only("1")[#voiceover("It's important to note the difference between traditional finance and behavioral finance. Traditional finance assumes that investors are rational and make decisions to maximize their utility.")]
#only("2")[#voiceover("In contrast, behavioral finance recognizes that investors are influenced by various psychological biases that can lead to irrational behavior and market inefficiencies.")]
#only("3")[#voiceover("Overconfidence is just one of many biases studied in behavioral finance. Others include loss aversion, anchoring bias, and herd behavior.")]
#only("4")[#voiceover("By understanding these biases, behavioral finance aims to better explain market anomalies and investor behavior that traditional finance models cannot fully account for.")]
]