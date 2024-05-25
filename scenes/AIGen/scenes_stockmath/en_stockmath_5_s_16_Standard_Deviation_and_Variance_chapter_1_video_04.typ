#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about standard deviation and variance.")
]
#text(size: 30pt, weight: "bold")[Standard Deviation & Variance 📊]
// The title "Standard Deviation & Variance" with a graph emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Standard deviation is the square root of variance. It quantifies the amount of variation or dispersion in a set of data points.")
]
#only("2-")[
- Standard Deviation = sqrt(Variance) 📏
]
// The formula for standard deviation is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("A low standard deviation indicates that the data points tend to be close to the mean, while a high standard deviation indicates that the data points are spread out over a wider range.")
]
#only("3-")[
- Low Standard Deviation ➡️ Data close to mean 🎯
- High Standard Deviation ➡️ Data spread out 🌀
]
// The implications of low and high standard deviation are shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Let's visualize this concept with a plot.")
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data with different standard deviations
data1 = np.random.normal(0, 1, 100)
data2 = np.random.normal(0, 3, 100)

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.hist(data1, bins=20, alpha=0.5, label='Low SD', color='blue')
ax.hist(data2, bins=20, alpha=0.5, label='High SD', color='red')
ax.set_xlabel('Value')
ax.set_ylabel('Frequency')
ax.set_title('Data with Different Standard Deviations')
ax.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows two histograms, one with low standard deviation (blue) and one with high standard deviation (red). This figure is shown from slide 4 onward.
#only("5")[
#voiceover("Standard deviation is a key measure in statistics and is widely used in various fields to understand the spread of data around the mean.")
]
#only("5-")[
- Key measure in statistics 📊
- Widely used in various fields 🌍
]
// The importance and wide usage of standard deviation are highlighted from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("In summary, standard deviation and variance are essential tools for understanding data dispersion.")
]
#text(size: 30pt, weight: "bold")[Recap 🎬]
// The title "Recap" with a clapper board emoji is shown on this slide
#v(40pt)
#only("2-")[
- Variance measures spread around mean 📏
]
#only("2")[
#voiceover("Variance measures how far a set of numbers are spread out from their average value.")
]
#v(20pt)
#only("3-")[
- Standard Deviation = sqrt(Variance) ✅
]
#only("3")[
#voiceover("Standard deviation is the square root of variance.")
]
#v(20pt)
#only("4-")[
- Quantifies variation in data 📊
]
#only("4")[
#voiceover("It quantifies the amount of variation or dispersion of a set of data values.")
]
#v(20pt)
#only("5-")[
- Key tool for data analysis 🔑
]
#only("5")[
#voiceover("Standard deviation is a key tool in data analysis, providing a clear measure of data spread around the mean.")
]
]