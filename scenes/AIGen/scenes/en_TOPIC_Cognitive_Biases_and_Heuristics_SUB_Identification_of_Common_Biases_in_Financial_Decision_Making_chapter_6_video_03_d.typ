#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias]
#v(40pt)
How can recency bias affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) It leads to balanced decision-making]#only("2-")[#text(fill:red)[a) It leads to balanced decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to overemphasis on recent events]#only("3-")[#text(fill:green)[b) It leads to overemphasis on recent events]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect because recency bias does not lead to balanced decision-making. In fact, it skews decisions towards recent events.")]
#only("3")[#voiceover("Option b) is the correct answer. Recency bias leads to overemphasizing recent events in decision-making.")]
#only("4")[#voiceover("Option c) is incorrect. Recency bias does have an effect on financial decisions, so saying it has no effect is not accurate.")]
#only("5")[#voiceover("Option d) is also incorrect. Recency bias does not improve accuracy. It actually introduces a bias towards recent events, which can lead to less accurate decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Recency bias is the tendency to weigh recent events more heavily than earlier events. 🧠]
#v(20pt)
#only("2-")[In financial decision-making, this can lead to: 💰]
#v(20pt)
#only("3-")[- Overreacting to short-term market fluctuations 📈📉]
#v(20pt)
#only("4-")[- Ignoring long-term trends 📏]
#v(20pt)
#only("5-")[- Making decisions based on incomplete information 🧩]
#v(20pt)
#only("6-")[This bias can result in suboptimal investment choices. ⚠]

#only("1")[#voiceover("Recency bias is the tendency to weigh recent events more heavily than earlier events in decision-making.")]
#only("2")[#voiceover("When it comes to financial decisions, recency bias can manifest in several ways.")]
#only("3")[#voiceover("First, it can lead to overreacting to short-term market fluctuations. An investor might put too much emphasis on recent market movements, whether positive or negative.")]
#only("4")[#voiceover("Second, recency bias can cause investors to ignore long-term trends. They might focus too much on recent performance and not enough on the bigger picture.")]
#only("5")[#voiceover("Third, this bias can lead to making decisions based on incomplete information. If an investor only considers recent data, they might miss important context from earlier periods.")]
#only("6")[#voiceover("As a result of these effects, recency bias can lead to suboptimal investment choices. Investors might buy or sell at the wrong times, or choose investments that don't align with their long-term goals.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Recency Bias]
#v(40pt)
#only("1-")[To reduce the impact of recency bias: 🛡]
#v(20pt)
#only("2-")[- Consider a longer time horizon 🗓]
#v(20pt)
#only("3-")[- Rely on fundamental analysis 🔍]
#v(20pt)
#only("4-")[- Diversify your portfolio 🎨]
#v(20pt)
#only("5-")[- Stick to your investment plan 📋]
#v(20pt)
#only("6-")[Remember, a long-term perspective is key in investing! 🔑]

#only("1")[#voiceover("To mitigate the effects of recency bias in your financial decisions, there are several strategies you can employ.")]
#only("2")[#voiceover("First, consider a longer time horizon. Don't just look at recent performance, but examine how an investment has performed over several years or even decades.")]
#only("3")[#voiceover("Second, rely on fundamental analysis. Look at the underlying financial health and prospects of a company, not just its recent stock price movements.")]
#only("4")[#voiceover("Third, diversify your portfolio. By spreading your investments across different assets and sectors, you can reduce the impact of any single event or trend.")]
#only("5")[#voiceover("Finally, stick to your investment plan. Having a clear strategy can help you avoid making impulsive decisions based on recent events.")]
#only("6")[#voiceover("Always remember, a long-term perspective is crucial in investing. Don't let short-term noise distract you from your ultimate financial goals.")]
]