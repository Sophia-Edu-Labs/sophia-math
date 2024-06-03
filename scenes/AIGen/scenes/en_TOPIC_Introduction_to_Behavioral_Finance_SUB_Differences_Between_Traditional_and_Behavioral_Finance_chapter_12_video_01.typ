#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior in Finance 🐑]
#v(40pt)
#only("1-")[- Individuals follow the actions of a larger group 👥]
#v(20pt)
#only("2-")[- Can lead to market bubbles 📈 or crashes 📉]
#only("1")[
#voiceover("Herd behavior in finance occurs when individuals follow the actions of a larger group, rather than making independent decisions based on their own analysis.")
]
#only("2")[
#voiceover("This behavior can lead to market bubbles, where prices rise rapidly due to excessive optimism, or market crashes, where prices plummet due to widespread panic selling.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Dotcom Bubble 💻]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.array([1997, 1998, 1999, 2000, 2001, 2002])
y = np.array([1000, 1500, 2500, 5000, 2000, 1200])

# Create plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, marker='o', linestyle='-', color='b', label='NASDAQ Composite Index')
plt.xlabel('Year')
plt.ylabel('Index Value')
plt.title('Dotcom Bubble')
plt.grid(True)
plt.legend()
plt.annotate('Bubble Peak', xy=(2000, 5000), xytext=(2000.2, 4000),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Bubble Burst', xy=(2001, 2000), xytext=(2001.2, 2500),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("A classic example of herd behavior is the Dotcom bubble of the late 1990s. During this period, investors poured money into internet-based companies, believing that they would generate huge profits in the future.")
]
#only("2")[
#voiceover("As more people invested, stock prices soared, creating a bubble. However, many of these companies had little or no actual earnings, and when this became apparent, the bubble burst, leading to a sharp decline in stock prices.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Causes of Herd Behavior 🧠]
#v(40pt)
#only("1-")[- Fear of missing out (FOMO) 😰]
#v(20pt)
#only("2-")[- Lack of individual research 📚]
#v(20pt)
#only("3-")[- Belief in the wisdom of the crowd 🧠👥]
#only("1")[
#voiceover("One of the main causes of herd behavior is the fear of missing out, or FOMO. Investors see others making money and feel pressured to join in, even if they don't fully understand the investment.")
]
#only("2")[
#voiceover("Another factor is a lack of individual research. Many investors simply follow the crowd without doing their own due diligence on the companies they're investing in.")
]
#only("3")[
#voiceover("Additionally, there's often a belief in the wisdom of the crowd - the idea that if so many people are investing, it must be a good decision.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Consequences of Herd Behavior 📉]
#v(40pt)
#only("1-")[- Overvalued assets 💰📈]
#v(20pt)
#only("2-")[- Market instability 📊🔻]
#v(20pt)
#only("3-")[- Financial losses for investors 💸😢]
#only("1")[
#voiceover("Herd behavior can lead to assets becoming overvalued. When demand for a stock increases due to herd mentality, the price can rise far above the company's actual value.")
]
#only("2")[
#voiceover("This contributes to market instability. Bubbles inevitably burst, leading to sharp declines in prices.")
]
#only("3")[
#voiceover("As a result, many investors can suffer significant financial losses when the market corrects itself.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Herd Behavior 🤔]
#v(40pt)
#only("1-")[- Do your own research 📝]
#v(20pt)
#only("2-")[- Have a long-term investment strategy 📅]
#v(20pt)
#only("3-")[- Be aware of market sentiment 📰]
#only("1")[
#voiceover("To avoid falling victim to herd behavior, it's important to do your own research. Don't just follow the crowd - make sure you understand what you're investing in.")
]
#only("2")[
#voiceover("It's also helpful to have a long-term investment strategy. Don't get caught up in short-term market fluctuations.")
]
#only("3")[
#voiceover("Finally, be aware of market sentiment. If everyone seems to be unreasonably optimistic or pessimistic about a particular stock or sector, it could be a sign of herd behavior.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Herd behavior: following the crowd 🐑👥]
#v(20pt)
#only("2-")[- Can lead to bubbles and crashes 📈📉]
#v(20pt)
#only("3-")[- Avoid by doing your own research 📝🧠]
#only("1")[
#voiceover("In summary, herd behavior in finance is the tendency for individuals to follow the actions of a larger group.")
]
#only("2")[
#voiceover("This can lead to market bubbles and crashes, as we saw with the Dotcom bubble.")
]
#only("3")[
#voiceover("To avoid the negative consequences of herd behavior, it's crucial to do your own research, have a long-term strategy, and be aware of market sentiment.")
]
]