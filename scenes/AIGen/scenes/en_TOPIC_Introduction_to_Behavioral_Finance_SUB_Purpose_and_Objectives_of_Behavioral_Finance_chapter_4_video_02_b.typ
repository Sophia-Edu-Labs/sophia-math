#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Anomalies]
#v(40pt)
What can biases in investor behavior lead to in financial markets?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Market efficiency]#only("2-")[#text(fill:red)[a) Market efficiency]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Market anomalies]#only("3-")[#text(fill:green)[b) Market anomalies]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Predictable trends]#only("4-")[#text(fill:red)[c) Predictable trends]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Stable prices]#only("5-")[#text(fill:red)[d) Stable prices]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a), market efficiency, is incorrect. Biases in investor behavior actually lead to inefficiencies and anomalies in the market, not efficiency.")]
#only("3")[#voiceover("Option b), market anomalies, is the correct answer. Investor biases can indeed lead to anomalies in the market, such as bubbles and crashes.")]
#only("4")[#voiceover("Option c), predictable trends, is incorrect. While biases can lead to trends, these trends are often not predictable due to the irrational nature of the biases.")]
#only("5")[#voiceover("Option d), stable prices, is also incorrect. Biases can actually lead to price instability and volatility in the market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 1: Understand how biases affect investor behavior 🧠]
#v(20pt)
#only("2-")[- Biases lead to irrational decisions]
#v(20pt)
#only("3-")[Step 2: Consider the impact on the market 📈]
#v(20pt)
#only("4-")[- Irrational behavior leads to inefficiencies and anomalies]
#v(20pt)
#only("5-")[- Examples: bubbles 🫧 and crashes 📉]
#v(20pt)
#only("6-")[Step 3: Conclude that biases lead to market anomalies ✅]

#only("1")[#voiceover("Now, let's go through the solution step by step.")]
#only("2")[#voiceover("First, we need to understand how biases affect investor behavior. Biases often lead investors to make irrational decisions that deviate from the assumptions of traditional finance.")]
#only("3")[#voiceover("Next, we consider the impact of this irrational behavior on the market as a whole.")]
#only("4")[#voiceover("Irrational investor behavior leads to inefficiencies and anomalies in the market. The market no longer behaves as efficiently as traditional finance would predict.")]
#only("5")[#voiceover("Examples of such anomalies include market bubbles, where prices inflate far beyond the intrinsic value, and crashes, where prices plummet dramatically.")]
#only("6")[#voiceover("Therefore, we can conclude that biases in investor behavior lead to market anomalies, making b) the correct answer.")]
]