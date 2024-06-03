#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key objectives of Behavioral Finance.")
]
#text(size: 30pt, weight: "bold")[Objectives of Behavioral Finance 🎯]
// The title "Objectives of Behavioral Finance" with a target emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("First, Behavioral Finance aims to identify common biases that influence investor behavior. These biases can lead to irrational decision-making.")
]
#only("2-")[
- Identify common biases 🧠
]
// The objective "Identify common biases" with a brain emoji is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("Second, it seeks to understand the impact these biases have on financial markets. Biases can contribute to market anomalies and inefficiencies.")
]
#only("3-")[
- Understand impact on markets 📊
]
// The objective "Understand impact on markets" with a chart emoji is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("Finally, Behavioral Finance aims to develop strategies to mitigate these biases. By being aware of biases and using decision-making frameworks, investors can make more rational choices.")
]
#only("4-")[
- Develop strategies to mitigate biases 🛠
]
// The objective "Develop strategies to mitigate biases" with a tool emoji is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("Here's a visual representation of how these objectives work together.")
]
#text(size: 30pt, weight: "bold")[Objectives Interaction 🔄]
// The title "Objectives Interaction" with a circular arrows emoji is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw arrows between objectives
ax.annotate('', xy=(-0.5, 0.5), xytext=(0.5, 0.5), arrowprops=dict(arrowstyle='<->', color='black'))
ax.annotate('', xy=(0.5, 0.5), xytext=(0, -0.5), arrowprops=dict(arrowstyle='<->', color='black'))
ax.annotate('', xy=(0, -0.5), xytext=(-0.5, 0.5), arrowprops=dict(arrowstyle='<->', color='black'))

# Add objective labels
ax.text(-0.5, 0.6, 'Identify\nBiases', ha='center', va='bottom', fontsize=12)
ax.text(0.5, 0.6, 'Understand\nImpact', ha='center', va='bottom', fontsize=12)
ax.text(0, -0.6, 'Develop\nStrategies', ha='center', va='top', fontsize=12)

# Remove axis ticks and labels
ax.set_xticks([])
ax.set_yticks([])
ax.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the three objectives connected by circular arrows, illustrating their interaction. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Identifying biases helps understand their impact on markets. Understanding the impact guides the development of mitigation strategies. And these strategies, in turn, help identify and manage biases more effectively.")
]
]

#slide()[
#only("1")[
#voiceover("To sum up, the key takeaways are:")
]
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("2-")[
- Behavioral Finance identifies common biases 🧠
]
#v(20pt)
#only("3-")[
- It studies the impact of biases on markets 📊
]
#v(20pt)
#only("4-")[
- It develops strategies to mitigate biases 🛠
]
#only("2")[
#voiceover("Behavioral Finance identifies common biases that influence investor behavior.")
]
#only("3")[
#voiceover("It studies the impact of these biases on financial markets.")
]
#only("4")[
#voiceover("And it develops strategies to mitigate these biases and promote more rational decision-making.")
]
]