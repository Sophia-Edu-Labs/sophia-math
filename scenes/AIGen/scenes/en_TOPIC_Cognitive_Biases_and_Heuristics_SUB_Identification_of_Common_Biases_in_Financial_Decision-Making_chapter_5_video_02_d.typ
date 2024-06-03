#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
#v(40pt)
#only("1-")[What is herd behavior?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Making decisions independently]#only("2-")[#text(fill:red)[a) Making decisions independently]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Following the actions of a larger group]#only("3-")[#text(fill:green)[b) Following the actions of a larger group]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring group actions]#only("4-")[#text(fill:red)[c) Ignoring group actions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Not quite, but don't worry! Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) Making decisions independently is incorrect. Herd behavior is the opposite of making independent decisions.")]
#only("3")[#voiceover("Option b) Following the actions of a larger group is the correct answer. Herd behavior is defined as the tendency to follow and mimic the actions of a larger group.")]
#only("4")[#voiceover("Option c) Ignoring group actions is also incorrect. Herd behavior involves paying attention to and following group actions, not ignoring them.")]
#only("5")[#voiceover("And option d) None of the above is incorrect, because option b) correctly defines herd behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior: Key Points]
#v(40pt)
#only("1-")[- Tendency to follow and mimic actions of a larger group 🐑]
#v(20pt)
#only("2-")[- Often ignoring individual analysis 🙈]
#v(20pt)
#only("3-")[- Can lead to irrational or suboptimal decisions 🤔]
#v(20pt)
#only("4-")[- Prevalent in financial markets and investment decisions 📈]
#only("1")[#voiceover("Herd behavior is the tendency for individuals to follow and mimic the actions of a larger group.")]
#only("2")[#voiceover("This often happens even if it goes against their own individual analysis or judgment.")]
#only("3")[#voiceover("Herd behavior can lead to irrational or suboptimal decisions, as individuals are swayed by the crowd rather than their own reasoning.")]
#only("4")[#voiceover("This phenomenon is particularly prevalent in financial markets and investment decisions, where investors may follow the crowd into or out of certain investments.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Stock Market Bubbles 📈]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, 10, 100)
y = 0.1*np.exp(0.6*x) 
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='Stock Price')
plt.annotate('Bubble bursts', xy=(7, 0.1*np.exp(0.6*7)), xytext=(5, 100), 
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Market Bubble')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Investors follow the crowd, driving prices up 📈]
#only("2-")[- Prices become detached from fundamentals 💸]
#only("3-")[- Eventually, the bubble bursts and prices crash 📉]
#only("1")[#voiceover("A classic example of herd behavior is the formation of stock market bubbles.")]
#only("2")[#voiceover("As more and more investors follow the crowd into a particular stock or sector, prices get driven up to unsustainable levels, becoming detached from the underlying fundamentals.")]
#only("3")[#voiceover("Eventually, the bubble bursts and prices come crashing down, often leading to significant losses for those caught up in the herd.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Herd Behavior 🧠]
#v(40pt)
#only("1-")[- Be aware of the phenomenon 🎓]
#v(20pt)
#only("2-")[- Do your own research and analysis 🔍]
#v(20pt) 
#only("3-")[- Have a long-term investment plan 📅]
#v(20pt)
#only("4-")[- Be prepared to go against the crowd 🦸]
#only("1")[#voiceover("To avoid falling victim to herd behavior, it's important to first be aware of the phenomenon.")]
#only("2")[#voiceover("Always do your own research and analysis before making investment decisions, rather than simply following the actions of others.")]
#only("3")[#voiceover("Have a long-term investment plan and stick to it, regardless of short-term market movements or crowd sentiment.")]
#only("4")[#voiceover("And finally, be prepared to go against the crowd when your analysis tells you it's the right thing to do. Independent thinking is key to successful investing.")]
]