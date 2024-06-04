#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias 🧠]
#v(40pt) 
#only("1-")[- Tendency to weigh recent events more heavily 🆕 > 🗓️]
#v(20pt)
#only("2-")[- Example: Investing after a recent market surge 📈]
#only("1")[
#voiceover("Recency bias is the tendency to weigh recent events more heavily than earlier events when making decisions.")
]
#only("2")[
#voiceover("For example, an investor might be more inclined to invest in a stock that has surged recently, even if its long-term prospects are not as strong.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias in Action 🎬]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.arange(1, 11)  
y = [2, 4, 6, 5, 3, 4, 5, 6, 8, 9]

# Plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, marker='o')
plt.title('Stock Price over Time', size=20)
plt.xlabel('Time', size=14)
plt.ylabel('Price', size=14)
plt.xticks(x)
plt.grid(True)

# Highlight recent surge
plt.axvspan(8.5, 10.5, alpha=0.3, color='green')
plt.text(9.5, 8.5, 'Recent Surge', size=20, ha='center')

plt.tight_layout()
plt.show()
```, width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's visualize this. Imagine this graph shows a stock's price over time. The recent surge at the end might lead an investor to buy the stock, even though the overall trend is less clear.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why is Recency Bias Problematic? 🤔]
#v(40pt)
#only("1-")[- Overemphasis on recent information 🔍]
#v(20pt)
#only("2-")[- Neglect of long-term trends 📉]
#v(20pt)
#only("3-")[- Can lead to suboptimal decisions 🙅]
#only("1")[
#voiceover("The problem with recency bias is that it leads to an overemphasis on recent information.")
]
#only("2")[
#voiceover("This can cause people to neglect longer-term trends and patterns.")
]
#only("3")[
#voiceover("As a result, recency bias can lead to suboptimal decisions that are based on a skewed perception of reality.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Countering Recency Bias 🛡️]
#v(40pt)
#only("1-")[- Consider a longer time horizon 📆]
#v(20pt) 
#only("2-")[- Look at data objectively 📊]
#v(20pt)
#only("3-")[- Be aware of your biases 🧘]
#only("1")[
#voiceover("To counter recency bias, it's important to consider a longer time horizon when making decisions.")
]
#only("2")[
#voiceover("Look at data objectively, rather than being swayed by recent events.")
]
#only("3")[
#voiceover("Most importantly, be aware of your own biases. Recognizing that you might be giving too much weight to recent information is the first step in making more balanced decisions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Recency bias: Overweighting recent events 🆕 > 🗓️]
#v(20pt)
#only("2-")[- Can lead to suboptimal decisions 🙅]
#v(20pt)  
#only("3-")[- Counter by considering longer horizons and being aware of biases 🧘📆]
#only("1")[
#voiceover("In summary, recency bias is the tendency to overweight recent events in decision making.")
]
#only("2")[
#voiceover("This can lead to suboptimal decisions that neglect long-term trends.")
]
#only("3")[
#voiceover("To counter recency bias, consider longer time horizons, look at data objectively, and be aware of your own biases.")
]
]