#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Descriptive Statistics 📊]
#v(40pt)
#only("1-")[- Provide simple summaries about the sample and measures]
#v(20pt)
#only("2-")[- Include measures of central tendency and variability]
#only("1")[
#voiceover("Descriptive statistics provide simple summaries about the sample and the measures in a study.")
]
#only("2")[
#voiceover("These summaries commonly include measures of central tendency and measures of variability.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Measures of Central Tendency 📍]
#v(40pt)
#only("1-")[- Mean $bar(x) = (sum x_i) / n$]
#v(20pt)
#only("2-")[- Median $tilde(x) = ("middle value")$]
#v(20pt)
#only("3-")[- Mode $hat(x) = ("most frequent value")$]
#only("1")[
#voiceover("Measures of central tendency describe the center or typical value of a dataset. The mean, denoted by x bar, is the sum of all values divided by the number of values.")
]
#only("2")[
#voiceover("The median, denoted by x tilde, is the middle value when the data is ordered.")
]
#only("3")[
#voiceover("The mode, denoted by x hat, is the most frequently occurring value.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Measures of Variability 📏]
#v(40pt)
#only("1-")[- Range $R = max(x_i) - min(x_i)$]
#v(20pt)
#only("2-")[- Variance $s^2 = (sum (x_i - bar(x))^2) / (n - 1)$]
#v(20pt)
#only("3-")[- Standard Deviation $s = sqrt(s^2)$]
#only("1")[
#voiceover("Measures of variability describe the spread of the data. The range, denoted by R, is the difference between the maximum and minimum values.")
]
#only("2")[
#voiceover("The variance, denoted by s squared, is the average of the squared differences from the mean.")
]
#only("3")[
#voiceover("The standard deviation, denoted by s, is the square root of the variance.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

data = np.random.normal(10, 2, 100)

plt.figure(figsize=(6, 4))
plt.hist(data, bins=20, edgecolor='black', alpha=0.7)
plt.axvline(np.mean(data), color='red', linestyle='dashed', linewidth=2, label='Mean')
plt.axvline(np.median(data), color='green', linestyle='dashed', linewidth=2, label='Median')
plt.xlabel('Value')
plt.ylabel('Frequency')
plt.title('Histogram with Mean and Median')
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of a dataset with the mean and median marked. The histogram shows the frequency of values, while the red dashed line represents the mean and the green dashed line represents the median.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Descriptive statistics provide simple summaries]
#v(20pt)
#only("2-")[- Measures of central tendency: mean, median, mode]
#v(20pt)
#only("3-")[- Measures of variability: range, variance, standard deviation]
#only("1")[
#voiceover("In summary, descriptive statistics provide simple summaries about a dataset.")
]
#only("2")[
#voiceover("These summaries include measures of central tendency like the mean, median, and mode, which describe the typical value.")
]
#only("3")[
#voiceover("They also include measures of variability like the range, variance, and standard deviation, which describe the spread of the data.")
]
]