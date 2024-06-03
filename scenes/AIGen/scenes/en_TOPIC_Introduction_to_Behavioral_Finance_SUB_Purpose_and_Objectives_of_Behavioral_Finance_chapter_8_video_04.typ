#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications 🌍]
#v(40pt)
#only("1-")[- Investment strategies 📈]
#v(20pt)
#only("2-")[- Financial planning 💰]
#v(20pt)
#only("3-")[- Policy-making 📜]
#only("1")[
#voiceover("Behavioral Finance has real-world applications in various areas. One of these areas is investment strategies.")
]
#only("2")[
#voiceover("Another important application is in financial planning, where understanding behavioral biases can help individuals make better financial decisions.")
]
#only("3")[
#voiceover("Lastly, Behavioral Finance insights can also inform policy-making, helping to create policies that account for the irrational behavior of market participants.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Investment Strategies 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the data
strategies = ['Value Investing', 'Momentum Investing', 'Contrarian Investing']
performance = [8, 6, 4]

# Create the bar chart
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(strategies, performance, color='skyblue', width=0.4)

# Add labels and title
ax.set_ylabel('Performance Score')
ax.set_title('Behavioral Finance-Informed Investment Strategies')

# Adjust the layout
fig.tight_layout()

plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[
#voiceover("Behavioral Finance can inform investment strategies such as value investing, momentum investing, and contrarian investing. By understanding psychological biases, investors can make more rational decisions and potentially improve their investment performance.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Financial Planning 💰]
#v(40pt)
#only("1-")[- Overcoming biases]
#v(20pt)
#only("2-")[- Setting realistic goals]
#v(20pt)
#only("3-")[- Diversifying portfolio]
#only("1")[
#voiceover("In financial planning, Behavioral Finance can help individuals overcome their biases, such as overconfidence or loss aversion.")
]
#only("2")[
#voiceover("It can also assist in setting realistic financial goals by accounting for behavioral tendencies.")
]
#only("3")[
#voiceover("Furthermore, understanding herd behavior can emphasize the importance of diversifying one's investment portfolio.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Policy-Making 📜]
#v(40pt)
#only("1-")[- Nudging policies]
#v(20pt)
#only("2-")[- Investor protection]
#v(20pt)
#only("3-")[- Market stability measures]
#only("1")[
#voiceover("In the realm of policy-making, Behavioral Finance can inform the design of nudging policies that guide people towards better financial decisions.")
]
#only("2")[
#voiceover("Policies can also be put in place to protect investors from their own irrational behavior and from market manipulation.")
]
#only("3")[
#voiceover("Moreover, understanding the psychological factors that contribute to market bubbles and crashes can help in designing policies to promote market stability.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Behavioral Finance has real-world applications 🌍]
#v(20pt)
#only("2-")[- Informs investment strategies, financial planning, and policy-making]
#v(20pt)
#only("3-")[- Helps in making better financial decisions 📈]
#only("1")[
#voiceover("To sum up, Behavioral Finance has real-world applications in a variety of areas.")
]
#only("2")[
#voiceover("It informs investment strategies, aids in personal financial planning, and guides policy-making.")
]
#only("3")[
#voiceover("By understanding psychological influences on financial behavior, Behavioral Finance helps individuals and institutions make better, more rational financial decisions.")
]
]