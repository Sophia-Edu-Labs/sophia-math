#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🙇‍♂️]

#v(40pt)

#only("1-")[
- Investors overestimate their knowledge or ability 🧠
]

#only("2-")[
- Can lead to excessive trading 📈
]

#only("1")[
#voiceover("Overconfidence bias occurs when investors overestimate their knowledge or ability to predict market movements.")
]

#only("2")[
#voiceover("This bias can lead to excessive trading, as overconfident investors may believe they can consistently outperform the market.")
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

# Simulated data
actual_returns = np.random.normal(0, 1, 100)
predicted_returns = actual_returns + np.random.normal(0, 1, 100)

# Create the plot
plt.figure(figsize=(8, 6))
plt.scatter(actual_returns, predicted_returns, alpha=0.6, label="Predicted vs Actual Returns")
plt.plot([-3, 3], [-3, 3], color='red', linestyle='--', label="Perfect Prediction Line")
plt.xlabel("Actual Returns")
plt.ylabel("Predicted Returns")
plt.title("Overconfidence Bias: Predicted vs Actual Returns")
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Here's an example. The scatter plot shows predicted returns versus actual returns. The red dashed line represents perfect predictions. Due to overconfidence, many predictions deviate significantly from the actual returns.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔄]

#v(40pt)

#only("1-")[
- Overconfidence bias: overestimating knowledge or ability 🧠
]

#only("2-")[
- Can lead to excessive trading and poor performance 📉
]

#only("3-")[
- Important to be aware of and control this bias 🎯
]

#only("1")[
#voiceover("In summary, overconfidence bias is when investors overestimate their knowledge or ability to predict market movements.")
]

#only("2")[
#voiceover("This can lead to excessive trading and poor investment performance.")
]

#only("3")[
#voiceover("It's important for investors to be aware of this bias and strive to control it in their decision-making process.")
]

]