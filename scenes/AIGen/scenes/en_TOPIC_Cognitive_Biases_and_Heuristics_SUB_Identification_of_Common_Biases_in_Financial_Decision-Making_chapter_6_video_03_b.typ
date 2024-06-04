#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias]
#v(40pt)
#only("1-")[How can recency bias affect financial decisions?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It leads to balanced decision-making]#only("2-")[#text(fill:red)[a) It leads to balanced decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to overemphasis on recent events]#only("3-")[#text(fill:green)[b) It leads to overemphasis on recent events]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Option a) is incorrect. Recency bias does not lead to balanced decision-making. In fact, it skews decisions towards more recent information.")]
#only("3")[#voiceover("Option b) is the correct answer. Recency bias leads to overemphasizing recent events in decision-making, potentially ignoring important historical context.")]
#only("4")[#voiceover("Option c) is incorrect. Recency bias does have an effect on financial decisions, so saying it has no effect is not accurate.")]
#only("5")[#voiceover("Lastly, option d) is also incorrect. Recency bias does not improve accuracy. It can actually lead to less accurate decisions by overweighting recent information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias Explained]
#v(40pt)
#only("1-")[- Tendency to weigh recent events more heavily 🧮]
#v(20pt)
#only("2-")[- Leads to overemphasis on short-term trends 📈]
#v(20pt)
#only("3-")[- Can cause investors to ignore long-term fundamentals 🏦]
#v(20pt)
#only("4-")[- Example: Overreacting to recent stock performance 📉]
#only("1")[#voiceover("Recency bias is the tendency to weigh recent events more heavily than earlier events.")]
#only("2")[#voiceover("This can lead to an overemphasis on short-term trends in financial markets.")]
#only("3")[#voiceover("As a result, investors might ignore the long-term fundamentals of an investment.")]
#only("4")[#voiceover("For example, an investor might overreact to a stock's recent poor performance, selling it even if the company's long-term prospects are good.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Recency Bias]
#v(40pt)
#only("1-")[- Consider long-term historical data 📜]
#v(20pt)
#only("2-")[- Be aware of your own biases 🧠]
#v(20pt)
#only("3-")[- Stick to your investment strategy 📊]
#v(20pt)
#only("4-")[- Consult with financial professionals 👨‍💼]
#only("1")[#voiceover("To avoid recency bias, it's important to consider long-term historical data, not just recent events.")]
#only("2")[#voiceover("Be aware of your own biases and try to make decisions objectively.")]
#only("3")[#voiceover("Stick to your investment strategy, even in the face of short-term volatility.")]
#only("4")[#voiceover("And don't hesitate to consult with financial professionals who can provide an unbiased perspective.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Recency bias: overweighting recent events 🧮]
#v(20pt)
#only("2-")[- Affects financial decisions by causing short-term focus 📉]
#v(20pt)
#only("3-")[- Can be mitigated by considering long-term data and strategies 📈]
#v(20pt)
#only("4-")[- Important to be aware of and manage this bias 🧠]
#only("1")[#voiceover("In summary, recency bias is the tendency to overweight recent events in decision-making.")]
#only("2")[#voiceover("It can affect financial decisions by causing a short-term focus that ignores long-term fundamentals.")]
#only("3")[#voiceover("This bias can be mitigated by considering long-term data and sticking to investment strategies.")]
#only("4")[#voiceover("It's important for investors to be aware of recency bias and actively manage it in their decision-making process.")]
]