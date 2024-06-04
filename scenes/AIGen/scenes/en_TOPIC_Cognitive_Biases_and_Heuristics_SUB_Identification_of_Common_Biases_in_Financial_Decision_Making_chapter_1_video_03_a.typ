#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
How can overconfidence bias affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to cautious investing]#only("2-")[#text(fill:red)[a) It leads to cautious investing]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to excessive risk-taking]#only("3-")[#text(fill:green)[b) It leads to excessive risk-taking]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves decision-making]#only("5-")[#text(fill:red)[d) It improves decision-making]]

#only("1")[#voiceover("That's not quite right. Let's see why b) is the correct answer.")]
#only("2")[#voiceover("a) is incorrect. Overconfidence does not lead to cautious investing, but rather the opposite.")]
#only("3")[#voiceover("b) is indeed correct. Overconfidence can lead investors to take on excessive risk, believing they can beat the market.")]
#only("4")[#voiceover("c) is incorrect. Overconfidence does have an effect on financial decisions, often a negative one.")]
#only("5")[#voiceover("d) is also incorrect. Overconfidence typically worsens decision-making by introducing bias.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[Definition: Overestimating one's own abilities 🧠💪]
#v(20pt)
#only("2-")[In investing: Belief in ability to beat the market 📈🏆]
#v(20pt)
#only("3-")[Consequence: Taking on excessive risk 🎲❗]
#v(20pt)
#only("4-")[Result: Potential for significant losses 📉💸]

#only("1")[#voiceover("Overconfidence bias is when individuals overestimate their own abilities or knowledge.")]
#only("2")[#voiceover("In the context of investing, this can manifest as a belief that one can consistently outperform the market.")]
#only("3")[#voiceover("This unwarranted confidence can lead investors to take on excessive risk, perhaps by overweighting certain stocks or trading excessively.")]
#only("4")[#voiceover("The result can be significant financial losses if the market moves against these overconfident bets.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider an investor who believes they can pick winning stocks 🕵️‍♂️]
#v(20pt)
#only("2-")[They overweight their portfolio in these "sure bets" 💰]
#v(20pt)
#only("3-")[Market moves against them, causing significant losses 📉]
#v(20pt)
#only("4-")[A more diversified portfolio would have mitigated this risk 🌐]

#only("1")[#voiceover("For example, consider an investor who believes they have a unique ability to identify winning stocks.")]
#only("2")[#voiceover("Due to their overconfidence, they may overweight their portfolio in these "sure bets", neglecting to properly diversify.")]
#only("3")[#voiceover("If the market moves against these chosen stocks, the investor could suffer significant losses.")]
#only("4")[#voiceover("A more balanced, diversified portfolio would have helped mitigate this risk, but overconfidence bias led the investor astray.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Overconfidence Bias]
#v(40pt)
#only("1-")[Acknowledge limits of one's knowledge and abilities 🧠🔍]
#v(20pt)
#only("2-")[Diversify investments to spread risk 🌐🔀]
#v(20pt)
#only("3-")[Base decisions on objective data, not gut feelings 📊✅]
#v(20pt)
#only("4-")[Be open to contrary opinions and information 👂🗣️]

#only("1")[#voiceover("To mitigate overconfidence bias, investors should first acknowledge the limits of their knowledge and predictive abilities.")]
#only("2")[#voiceover("Diversifying investments can help spread risk, so a single wrong call doesn't sink the ship.")]
#only("3")[#voiceover("Basing decisions on objective data and analysis, rather than gut feelings, can also help ground choices in reality.")]
#only("4")[#voiceover("Finally, being open to contrary opinions and information can help challenge overconfident views and lead to more balanced decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Overconfidence bias: Overestimating one's abilities 🧠💪]
#v(20pt)
#only("2-")[In investing: Leads to excessive risk-taking 🎲❗]
#v(20pt)
#only("3-")[Can result in significant losses 📉💸]
#v(20pt)
#only("4-")[Mitigate by acknowledging limits, diversifying, using data, being open to contrary views 🧠🌐📊👂]

#only("1")[#voiceover("In summary, overconfidence bias is the tendency to overestimate one's own abilities or knowledge.")]
#only("2")[#voiceover("In investing, this can lead to taking on excessive risk, such as overweighting certain stocks.")]
#only("3")[#voiceover("The result can be significant financial losses if the market moves against these overconfident bets.")]
#only("4")[#voiceover("To mitigate overconfidence bias, investors should acknowledge their limits, diversify investments, base decisions on data, and be open to contrary views.")]
]