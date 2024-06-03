#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of market efficiency in traditional finance.")
]
#text(size: 30pt, weight: "bold")[Market Efficiency]
// The title "Market Efficiency" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Market efficiency means that asset prices fully reflect all available information at any given time.")
]
#only("2-")[
- Asset prices reflect all available information 🏷️💰
]
// The bullet point is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("In an efficient market, it is impossible to consistently achieve returns higher than the market average.")
]
#only("3-")[
- Impossible to consistently beat the market 📈❌
]
// The bullet point is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("This is because all information is already incorporated into asset prices, leaving no room for taking advantage of mispriced securities.")
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate random data for efficient market
np.random.seed(0)
efficient_market = np.random.normal(0, 1, size=(50, 2))

# Generate random data for inefficient market
inefficient_market = np.random.normal(0, 3, size=(50, 2))

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot efficient market
ax.scatter(efficient_market[:, 0], efficient_market[:, 1], color='blue', label='Efficient Market')

# Plot inefficient market
ax.scatter(inefficient_market[:, 0], inefficient_market[:, 1], color='red', label='Inefficient Market')

# Add labels and legend
ax.set_xlabel('Price')
ax.set_ylabel('Return')
ax.set_title('Efficient vs Inefficient Market')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows a comparison between an efficient market (blue points) and an inefficient market (red points). In the efficient market, returns are tightly clustered around the average, while in the inefficient market, returns are more spread out, indicating potential mispricing. This figure is shown on slide 4.
]

#slide()[
#only("1")[
#voiceover("The Efficient Market Hypothesis, or EMH, is a cornerstone of traditional finance.")
]
#text(size: 30pt, weight: "bold")[Efficient Market Hypothesis]
// The title "Efficient Market Hypothesis" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("According to EMH, it is impossible to consistently outperform the market because all information is already reflected in asset prices.")
]
#only("2-")[
- Impossible to consistently outperform the market 📈🚫
]
// The bullet point is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("However, behavioral finance challenges EMH by arguing that psychological biases and irrational behavior can lead to market inefficiencies.")
]
#only("3-")[
- Challenged by behavioral finance 🧠💸
]
// The bullet point is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("These inefficiencies may provide opportunities for investors to exploit mispriced securities and achieve abnormal returns.")
]
#only("4-")[
- Inefficiencies may provide opportunities 📊✅
]
// The bullet point is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("To summarize, market efficiency is a key concept in traditional finance.")
]
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("It means that asset prices fully reflect all available information at any given time.")
]
#only("2-")[
- Asset prices reflect all available information 🏷️💰
]
// The bullet point is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("The Efficient Market Hypothesis suggests that it is impossible to consistently beat the market.")
]
#only("3-")[
- EMH: Impossible to consistently beat the market 📈❌
]
// The bullet point is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("However, behavioral finance challenges this view, arguing that psychological biases and irrational behavior can lead to market inefficiencies and potential opportunities for investors.")
]
#only("4-")[
- Behavioral finance: Inefficiencies may provide opportunities 🧠💸📊✅
]
// The bullet point is shown from slide 4 onward
]