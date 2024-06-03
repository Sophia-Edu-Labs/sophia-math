#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key differences between Behavioral Finance and Traditional Finance.")
]
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Traditional Finance]
// The title "Behavioral Finance vs Traditional Finance" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Traditional Finance assumes that investors are rational and always make optimal decisions. It focuses on market trends, economic policies, and financial ratios.")
]
#only("2-")[
- Traditional Finance: 
  - Assumes rational investors 🧠
  - Focuses on market trends 📈, economic policies 📜, financial ratios 📊
]
// The key points about Traditional Finance are shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("In contrast, Behavioral Finance acknowledges that investors are often influenced by psychological factors and biases. It aims to understand and explain irrational investor behavior.")
]
#only("3-")[
- Behavioral Finance:
  - Acknowledges psychological influences 🧠❤
  - Aims to understand irrational behavior 🤔
]
// The key points about Behavioral Finance are shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("While Traditional Finance assumes efficient markets, Behavioral Finance shows that markets can be influenced by irrational behavior, leading to anomalies like bubbles and crashes.")
]
#only("4-")[
- Market Efficiency:
  - Traditional Finance: Assumes efficient markets 📈✅
  - Behavioral Finance: Shows markets can be irrational 📉😵
]
// The comparison of market efficiency assumptions is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("Here's a simple visualization to illustrate the difference.")
]
#text(size: 30pt, weight: "bold")[Visualization]
// The title "Visualization" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure with two subplots
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 4))

# Traditional Finance subplot
ax1.set_title('Traditional Finance', fontsize=14)
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 10)
ax1.grid(True)
ax1.set_xlabel('Time', fontsize=12)
ax1.set_ylabel('Price', fontsize=12)
ax1.plot(np.arange(0, 10), np.arange(0, 10), color='blue', linewidth=2)
ax1.text(5, 8, 'Rational', fontsize=14, color='green', ha='center')

# Behavioral Finance subplot
ax2.set_title('Behavioral Finance', fontsize=14)
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 10)
ax2.grid(True)
ax2.set_xlabel('Time', fontsize=12)
ax2.set_ylabel('Price', fontsize=12)
x = np.arange(0, 10)
y = 2*np.sin(x) + x
ax2.plot(x, y, color='red', linewidth=2)
ax2.text(5, 8, 'Irrational', fontsize=14, color='red', ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows two subplots: one for Traditional Finance with a straight line (rational behavior) and one for Behavioral Finance with a wavy line (irrational behavior). This figure is shown from slide 1 onward.
#only("2")[
#voiceover("The left plot represents Traditional Finance, showing a straight line indicating rational behavior. The right plot represents Behavioral Finance, with a wavy line illustrating irrational behavior influenced by psychological factors.")
]
]

#slide()[
#only("1")[
#voiceover("In summary, Behavioral Finance provides a more realistic understanding of financial markets by incorporating psychological influences, while Traditional Finance assumes rational behavior.")
]
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Behavioral Finance focuses on psychological factors 🧠❤
- Traditional Finance assumes rational behavior 🧠✅
- Behavioral Finance provides a more realistic view of markets 📈📉😵
]
#only("2")[
#voiceover("By studying how biases affect investor decisions, Behavioral Finance aims to develop strategies to mitigate these biases and improve financial decision-making.")
]
#only("2-")[
- Behavioral Finance studies biases to improve decision-making 🎯
]
]