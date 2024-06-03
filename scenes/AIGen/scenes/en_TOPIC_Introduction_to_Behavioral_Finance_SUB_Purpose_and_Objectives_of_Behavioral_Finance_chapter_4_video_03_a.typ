#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Anomalies]
#v(40pt)
Which of the following is an example of a market anomaly caused by biases?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Stable market prices]#only("2-")[#text(fill:red)[a) Stable market prices]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Market bubbles]#only("3-")[#text(fill:green)[b) Market bubbles]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Accurate predictions]#only("4-")[#text(fill:red)[c) Accurate predictions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Efficient markets]#only("5-")[#text(fill:red)[d) Efficient markets]]

#only("1")[#voiceover("That's not quite right. Let's look at the correct solution...")]
// Very briefly talk about b and why it is correct
#only("2")[#voiceover("b) Market bubbles. Market bubbles are indeed an example of a market anomaly caused by biases. Bubbles occur when prices are driven up by irrational exuberance and herd behavior, rather than by fundamental value.")]
// Very briefly talk about a and why it is incorrect
#only("3")[#voiceover("a) Stable market prices is incorrect. Stable prices are not an anomaly, but rather a sign of a well-functioning, efficient market.")]
// Very briefly talk about c and why it is incorrect
#only("4")[#voiceover("c) Accurate predictions is also incorrect. If predictions are accurate, it suggests that the market is behaving rationally and efficiently, not anomalously.")]
// Very briefly talk about d and why it is incorrect
#only("5")[#voiceover("And d) Efficient markets is incorrect as well. Efficient markets are the opposite of anomalous markets. In an efficient market, prices reflect all available information and there are no systematic biases.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Bubbles 🫧]
#v(40pt)
#only("1-")[- Prices driven up by irrational exuberance and herd behavior]
#v(20pt)
#only("2-")[- Not based on fundamental value]
#v(20pt)
#only("3-")[- Eventually "pop" leading to rapid price decline]
#v(20pt)
#only("4-")[- Example: Dot-com bubble of the late 1990s 📉]

#only("1")[#voiceover("Market bubbles are a prime example of a market anomaly caused by behavioral biases.")]
#only("2")[#voiceover("In a bubble, prices are driven up not by the fundamental value of the assets, but by irrational exuberance and herd behavior. Investors buy because they see others buying, not because the asset is actually worth the high price.")]
#only("3")[#voiceover("Eventually, the bubble \"pops\" when investors realize the prices are unsustainable. This leads to a rapid decline in prices as everyone tries to sell at once.")]
#only("4")[#voiceover("A famous example is the dot-com bubble of the late 1990s. Internet company stocks soared to extremely high prices despite many of the companies having no profits. When the bubble popped in 2000, many of these companies went out of business and investors lost billions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Biases in Bubbles 🧠]
#v(40pt)
#only("1-")[- Herd behavior: Following the crowd 🐑]
#v(20pt)
#only("2-")[- Overconfidence: Believing you can't lose 😎]
#v(20pt)
#only("3-")[- Fear of missing out (FOMO): Buying because others are 😰]
#v(20pt)
#only("4-")[- These biases lead to irrational decisions and market anomalies 🤪]

#only("1")[#voiceover("Several behavioral biases contribute to the formation of market bubbles.")]
#only("2")[#voiceover("Herd behavior is when investors follow the crowd, buying because they see others buying. They assume that if everyone else is doing it, it must be a good idea.")]
#only("3")[#voiceover("Overconfidence is when investors believe they can't lose. They think they have special knowledge or skills that will allow them to get out before the bubble pops.")]
#only("4")[#voiceover("Fear of missing out, or FOMO, is when investors buy because they're afraid of missing out on gains they see others making. They don't want to be left behind.")]
#only("5")[#voiceover("All of these biases lead investors to make irrational decisions, driving prices away from fundamental values and causing market anomalies like bubbles.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Insight 💡]
#v(40pt)
#only("1-")[- Identifies how psychological biases affect investor behavior]
#v(20pt)
#only("2-")[- Explains market anomalies traditional finance can't 🤔]
#v(20pt)
#only("3-")[- Helps understand why bubbles form and burst 💥]
#v(20pt)
#only("4-")[- Important for investors and policymakers to consider 👨‍💼👩‍💼]

#only("1")[#voiceover("This example illustrates a key insight of behavioral finance.")]
#only("2")[#voiceover("Behavioral finance identifies how psychological biases affect investor behavior in real-world markets. It can explain anomalies that traditional finance theories, which assume rational behavior, cannot.")]
#only("3")[#voiceover("Understanding these biases helps us understand why market bubbles form and why they eventually burst.")]
#only("4")[#voiceover("This insight is important for individual investors to consider in their own decision making. It's also important for policymakers in designing regulations and interventions to promote market stability.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[- Market bubbles are an anomaly caused by behavioral biases 🫧]
#v(20pt)
#only("2-")[- Herd behavior, overconfidence, and FOMO drive bubbles 🐑😎😰]
#v(20pt)
#only("3-")[- Behavioral finance explains these anomalies 📚]
#v(20pt)
#only("4-")[- Important insight for investors and policymakers 👨‍💼👩‍💼]

#only("1")[#voiceover("To recap, market bubbles are a clear example of a market anomaly caused by behavioral biases.")]
#only("2")[#voiceover("Biases like herd behavior, overconfidence, and fear of missing out drive investors to make irrational decisions, pushing prices away from fundamental values.")]
#only("3")[#voiceover("Behavioral finance provides a framework to understand these anomalies that traditional finance theories cannot fully explain.")]
#only("4")[#voiceover("This understanding is crucial for investors in making sound decisions and for policymakers in promoting market efficiency and stability.")]
]