#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence in Trading]
#v(40pt)
#only("1-")[Overconfidence in trading often leads to:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Taking fewer risks]#only("2-")[#text(fill:red)[a) Taking fewer risks]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Selling stocks prematurely]#only("3-")[#text(fill:red)[b) Selling stocks prematurely]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring market data]#only("4-")[#text(fill:red)[c) Ignoring market data]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Excessive trading]#only("5-")[#text(fill:green)[d) Excessive trading]]
#only("1")[#voiceover("That's not quite right. Let's look at the correct solution. Overconfidence in trading often leads to excessive trading.")]
#only("2")[#voiceover("Taking fewer risks is incorrect. Overconfident traders often take more risks, not fewer, believing they can beat the market.")]
#only("3")[#voiceover("Selling stocks prematurely is also incorrect. Overconfident traders often hold onto losing positions too long, believing the stock will rebound.")]
#only("4")[#voiceover("Ignoring market data is incorrect as well. While overconfident traders may discount contrary information, they don't necessarily ignore all market data.")]
#only("5")[#voiceover("Excessive trading is the correct answer. Overconfident traders often trade more frequently than is warranted, believing they can time the market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Overconfidence Leads to Excessive Trading]
#v(40pt)
#only("1-")[🧠 Overconfident traders overestimate their abilities]
#v(20pt)
#only("2-")[💰 They believe they can beat the market]
#v(20pt)
#only("3-")[📈 This leads to more frequent trading]
#v(20pt)
#only("4-")[❌ But excessive trading often leads to subpar returns]

#only("1")[#voiceover("Overconfident traders tend to overestimate their own abilities and knowledge.")]
#only("2")[#voiceover("They believe they can outsmart the market and earn superior returns.")]
#only("3")[#voiceover("This belief leads them to trade more frequently, thinking they can time the market.")]
#only("4")[#voiceover("However, excessive trading often leads to subpar returns due to increased transaction costs and the difficulty of consistently beating the market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[The Pitfalls of Excessive Trading]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.arange(1, 6)
y = [10, 8, 6, 4, 2] 

fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(x, y, color='skyblue', width=0.6)

ax.set_xlabel('Number of Trades')
ax.set_ylabel('Portfolio Value ($1000s)')
ax.set_title('Excessive Trading and Portfolio Value')
ax.set_xticks(x)

for i, v in enumerate(y):
    ax.text(x[i] - 0.25, v + 0.1, str(v), color='black')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("2-")[💸 Increased transaction costs eat into returns]
#v(20pt)
#only("3-")[🎲 Difficulty timing the market consistently]
#v(20pt)
#only("4-")[📉 Frequent trading can lead to worse performance]

#only("1")[#voiceover("This graph illustrates how excessive trading can erode portfolio value over time due to increased transaction costs.")]
#only("2")[#voiceover("Each trade incurs costs such as commissions and spreads, which eat into investment returns.")]
#only("3")[#voiceover("Moreover, it's very difficult to consistently time the market. Even professional investors struggle to do so reliably.")]
#only("4")[#voiceover("As a result, frequent trading prompted by overconfidence can lead to worse performance compared to a more disciplined, less active approach.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[✅ Overconfidence often leads to excessive trading]
#v(20pt)
#only("2-")[🧠 Driven by overestimation of one's abilities]
#v(20pt)
#only("3-")[💸 Excessive trading can erode returns]
#v(20pt)
#only("4-")[🎯 A disciplined, less active approach is often better]

#only("1")[#voiceover("To summarize, overconfidence in one's trading abilities often leads to excessive trading.")]
#only("2")[#voiceover("This is driven by an overestimation of one's ability to beat the market.")]
#only("3")[#voiceover("However, excessive trading can erode returns due to increased costs and the difficulty of market timing.")]
#only("4")[#voiceover("A more disciplined, less active approach to investing is often more effective over the long run.")]
]