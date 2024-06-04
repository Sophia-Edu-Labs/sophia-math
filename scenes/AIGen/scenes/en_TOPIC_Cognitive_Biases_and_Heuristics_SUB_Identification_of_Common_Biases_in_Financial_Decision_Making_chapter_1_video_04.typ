#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🧠]
#v(40pt)
#only("1-")[
- Overestimating one's abilities 📈
]
#v(20pt)
#only("2-")[
- Leads to excessive risk-taking 🎲
]
#v(20pt)
#only("3-")[
- Common in financial decisions 💰
]

#only("1")[
#voiceover("Overconfidence bias is a cognitive bias where individuals overestimate their own abilities or knowledge.")
]

#only("2")[
#voiceover("This bias can lead to excessive risk-taking, as people may believe they are more capable of making successful decisions than they actually are.")
]

#only("3")[
#voiceover("Overconfidence bias is particularly common in financial decision-making, where it can result in suboptimal investments or trading strategies.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📊]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Data
actual_returns = 5
estimated_returns = [10, 8, 12, 15, 6]

# Create a bar chart
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar("Actual", actual_returns, color='blue', alpha=0.7, label='Actual Returns')
ax.bar(range(len(estimated_returns)), estimated_returns, color='red', alpha=0.7, label='Estimated Returns')

# Customize the chart
ax.set_ylabel('Returns (%)')
ax.set_title('Actual vs. Estimated Returns')
ax.set_xticks(range(len(estimated_returns)))
ax.set_xticklabels(['Investor ' + str(i+1) for i in range(len(estimated_returns))])
ax.legend()

# Display the chart
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Let's consider an example. Suppose the actual returns of an investment are 5%. However, due to overconfidence bias, investors might estimate their returns to be much higher, like 10%, 8%, 12%, 15%, or 6%.")
]

#only("2")[
#voiceover("This chart illustrates the discrepancy between the actual returns (in blue) and the overconfident estimates made by individual investors (in red).")
]

#only("3")[
#voiceover("Such overestimation of returns can lead investors to make risky decisions that may not align with the reality of the market.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigation Strategies 🛡️]
#v(40pt)

#only("1-")[
- Seek out objective data 📊
]
#v(20pt)
#only("2-")[
- Consider alternative perspectives 🔍
]
#v(20pt)
#only("3-")[
- Be aware of one's biases 🧐
]

#only("1")[
#voiceover("To mitigate overconfidence bias, it's important to seek out objective data and base decisions on factual information rather than gut feelings.")
]

#only("2")[
#voiceover("Considering alternative perspectives and opinions can also help challenge one's own assumptions and overconfidence.")
]

#only("3")[
#voiceover("Most importantly, being aware of the existence of overconfidence bias and actively questioning one's own judgments can help reduce its impact on decision-making.")
]
]