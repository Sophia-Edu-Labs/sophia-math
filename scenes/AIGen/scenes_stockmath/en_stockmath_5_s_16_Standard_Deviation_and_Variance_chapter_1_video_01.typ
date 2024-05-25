#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation]
#v(40pt)
#only("1-")[- Measures dispersion in a set of values 📊]
#v(20pt)
#only("2-")[- Square root of the variance 📏]
#only("1")[
#voiceover("Standard deviation is a statistical measure that quantifies the amount of variation or dispersion in a set of values.")
]
#only("2")[
#voiceover("It is calculated by taking the square root of the variance.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance]
#v(40pt)
#only("1-")[- Average of squared deviations from the mean]
#v(20pt)
#only("2-")[$ s^2 = ((x_1 - bar(x))^2 + ... + (x_n - bar(x))^2)/(n - 1) $]
#only("1")[
#voiceover("Variance is the average of the squared differences from the mean.")
]
#only("2")[
#voiceover("The formula for variance is: s squared equals the sum of x sub i minus x bar squared, divided by n minus 1, where x sub i are the individual values, x bar is the mean, and n is the number of values.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation Formula]
#v(40pt)
#only("1-")[$ s = sqrt(s^2) $]
#v(20pt)
#only("2-")[$ s = sqrt(((x_1 - bar(x))^2 + ... + (x_n - bar(x))^2)/(n - 1)) $]
#only("1")[
#voiceover("The standard deviation is the square root of the variance.")
]
#only("2")[
#voiceover("Therefore, the formula for standard deviation is: s equals the square root of the sum of x sub i minus x bar squared, divided by n minus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Interpretation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.random.normal(10, 1, 1000)
y = np.random.normal(10, 5, 1000)

# Create plots
fig, axs = plt.subplots(1, 2, figsize=(10, 4))

axs[0].hist(x, bins=20, density=True, alpha=0.6, color='g')
axs[0].set_title('Low Standard Deviation')
axs[0].set_xlabel('Value')
axs[0].set_ylabel('Density')

axs[1].hist(y, bins=20, density=True, alpha=0.6, color='r')
axs[1].set_title('High Standard Deviation')
axs[1].set_xlabel('Value')
axs[1].set_ylabel('Density')

plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("A low standard deviation indicates that the values tend to be close to the mean, while a high standard deviation indicates that the values are spread out over a wider range.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Standard Deviation: Measure of dispersion 📊]
#v(20pt)
#only("2-")[- Calculated as the square root of variance 📏]
#v(20pt)
#only("3-")[- Low values: clustered around mean, High values: spread out 🎯]
#only("1")[
#voiceover("In summary, standard deviation is a measure of the dispersion of a set of values.")
]
#only("2")[
#voiceover("It is calculated as the square root of the variance.")
]
#only("3")[
#voiceover("Low standard deviation values indicate data points clustered closely around the mean, while high values indicate data spread out over a larger range.")
]
]