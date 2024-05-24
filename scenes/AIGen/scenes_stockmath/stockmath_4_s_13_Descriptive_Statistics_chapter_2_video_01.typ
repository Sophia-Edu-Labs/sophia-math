#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Measures of Variability]
#v(40pt)
#only("1-")[- Describe the spread of data points 📊]
#v(20pt)
#only("2-")[- Range, variance, standard deviation 📏]
#only("1")[
#voiceover("Measures of variability describe how spread out the data points are around the central tendency, such as the mean or median.")
]
#only("2")[
#voiceover("Common measures of variability include range, variance, and standard deviation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Range]
#v(40pt)
#only("1-")[- Difference between max and min values]
#v(20pt)
#only("2-")[$ "Range" = max(x_i) - min(x_i) $]
#only("1")[
#voiceover("The range is the simplest measure of variability. It's the difference between the maximum and minimum values in the dataset.")
]
#only("2")[
#voiceover("Mathematically, the range equals the maximum value minus the minimum value.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance and Standard Deviation]
#v(40pt)
#only("1-")[- Measure the average distance from the mean 📐]
#v(20pt)
#only("2-")[$ s^2 = (1/(n-1)) sum((x_i - bar(x))^2) $]
#v(20pt)
#only("3-")[$ s = sqrt(s^2) $]
#only("1")[
#voiceover("Variance and standard deviation measure the average distance of each data point from the mean.")
]
#only("2")[
#voiceover("The variance, denoted as s squared, is calculated by taking the sum of the squared differences between each data point and the mean, divided by n minus 1, where n is the number of data points.")
]
#only("3")[
#voiceover("The standard deviation, denoted as s, is the square root of the variance. It's in the same units as the original data.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate two datasets with different variability
data1 = np.random.normal(10, 1, 100)
data2 = np.random.normal(10, 5, 100)

# Create the plot
plt.figure(figsize=(10, 6))
plt.subplot(1, 2, 1)
plt.hist(data1, bins=20, alpha=0.5, label='Low Variability')
plt.axvline(np.mean(data1), color='red', linestyle='dashed', linewidth=2, label='Mean')
plt.legend()
plt.title('Dataset 1')
plt.xlabel('Value')
plt.ylabel('Frequency')

plt.subplot(1, 2, 2)
plt.hist(data2, bins=20, alpha=0.5, label='High Variability')
plt.axvline(np.mean(data2), color='red', linestyle='dashed', linewidth=2, label='Mean')
plt.legend()
plt.title('Dataset 2')
plt.xlabel('Value')
plt.ylabel('Frequency')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of two datasets with different variability. The dataset on the left has low variability, with data points clustered closely around the mean. The dataset on the right has high variability, with data points spread out more from the mean.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Measures of variability describe spread 📊]
#v(20pt)
#only("2-")[- Range: difference between max and min 📏]
#v(20pt)
#only("3-")[- Variance and standard deviation: average distance from mean 📐]
#only("1")[
#voiceover("In summary, measures of variability describe how spread out the data points are.")
]
#only("2")[
#voiceover("The range is the difference between the maximum and minimum values.")
]
#only("3")[
#voiceover("Variance and standard deviation measure the average distance of each data point from the mean.")
]
]