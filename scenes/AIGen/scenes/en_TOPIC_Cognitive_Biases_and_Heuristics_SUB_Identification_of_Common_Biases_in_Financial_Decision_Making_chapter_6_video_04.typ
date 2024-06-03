#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias Recap]
#v(40pt)
#only("1-")[- Tendency to weigh recent events more heavily 🕰️]
#only("2-")[- Overemphasis on recent information 🔍]
#only("3-")[- Can lead to biased financial decisions 💸]
#only("1")[
#voiceover("Recency bias is the tendency to weigh recent events more heavily than earlier events.")
]
#only("2")[
#voiceover("This means that people tend to overemphasize recent information when making decisions.")
]
#only("3")[
#voiceover("In the context of financial decision-making, recency bias can lead to biased decisions that are overly influenced by recent market trends or news.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.arange(1, 13)
y = [100, 110, 105, 120, 115, 130, 125, 140, 135, 150, 145, 160]

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, marker='o', linestyle='-', color='blue')

# Add labels and title
ax.set_xlabel('Month')
ax.set_ylabel('Stock Price ($)')
ax.set_title('Stock Price Over Time')

# Add grid
ax.grid(True)

# Highlight recent months
recent_months = np.arange(9, 13)
ax.fill_between(recent_months, 0, 180, color='red', alpha=0.2, label='Recent Months')

# Add legend
ax.legend(loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider this example of a stock price over a year. The red shaded area highlights the most recent months.")
]
#only("2")[
#voiceover("An investor influenced by recency bias might focus too heavily on the recent upward trend, ignoring the overall pattern.")
]
#only("3")[
#voiceover("This could lead to overconfidence in the stock and potentially risky investment decisions.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigation]
#v(40pt)
#only("1-")[- Be aware of the bias 🧠]
#only("2-")[- Consider longer-term trends 📈]
#only("3-")[- Seek out diverse information sources 📰]
#only("1")[
#voiceover("To mitigate recency bias, it's important to first be aware of its existence.")
]
#only("2")[
#voiceover("When making financial decisions, consider longer-term trends and patterns, not just recent events.")
]
#only("3")[
#voiceover("Seek out diverse information sources to get a more balanced perspective and avoid overreliance on recent news.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Recency bias: overweighting recent events 🕰️]
#only("2-")[- Can lead to biased financial decisions 💸]
#only("3-")[- Mitigate by considering longer-term trends and diverse information 📈📰]
#only("1")[
#voiceover("In summary, recency bias is the tendency to overweight recent events.")
]
#only("2")[
#voiceover("This can lead to biased financial decisions that are overly influenced by recent trends or news.")
]
#only("3")[
#voiceover("To mitigate recency bias, consider longer-term trends and seek out diverse information sources.")
]
]