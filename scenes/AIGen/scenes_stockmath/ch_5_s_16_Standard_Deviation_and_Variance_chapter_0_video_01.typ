#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Variance 📊]
#v(40pt)
#only("1-")[- Measures the spread of data points around the mean 🎯]
#v(20pt)
#only("2-")[- Example data set: $\{1, 2, 3, 4, 5\}$]
#v(20pt)
#only("3-")[- Mean: $(1 + 2 + 3 + 4 + 5) / 5 = 3$]
#only("1")[
#voiceover("Variance is a statistical measure that quantifies the spread of data points around the mean in a data set.")
]
#only("2")[
#voiceover("Let's consider an example data set: 1, 2, 3, 4, and 5.")
]
#only("3")[
#voiceover("To calculate the variance, we first find the mean of the data set, which is the sum of all data points divided by the number of data points. In this case, the mean is 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Variance]
#v(40pt)
#only("1-")[- Step 1: Subtract the mean from each data point]
#v(20pt)
#only("2-")[$ \{-2, -1, 0, 1, 2\} $]
#v(20pt)
#only("3-")[- Step 2: Square each difference]
#v(20pt)
#only("4-")[$ \{4, 1, 0, 1, 4\} $]
#only("1")[
#voiceover("To calculate the variance, we first subtract the mean from each data point.")
]
#only("2")[
#voiceover("In our example, we get negative 2, negative 1, 0, 1, and 2.")
]
#only("3")[
#voiceover("Next, we square each difference.")
]
#only("4")[
#voiceover("This gives us 4, 1, 0, 1, and 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Variance (cont.)]
#v(40pt)
#only("1-")[- Step 3: Calculate the average of the squared differences]
#v(20pt)
#only("2-")[$ (4 + 1 + 0 + 1 + 4) / 5 = 2 $]
#v(20pt)
#only("3-")[- Variance: $2$]
#v(40pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

data = [1, 2, 3, 4, 5]
mean = np.mean(data)

plt.figure(figsize=(6, 4))
plt.plot(data, [0]*5, 'bo', label='Data Points')
plt.axhline(mean, color='r', linestyle='-', label='Mean')

for i in range(len(data)):
    plt.plot([data[i], data[i]], [0, mean], 'b--')

plt.xlabel('Data Points')
plt.ylabel('Value')
plt.title('Data Points and Mean')
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Finally, we calculate the average of the squared differences by summing them up and dividing by the number of data points.")
]
#only("2")[
#voiceover("In this case, we get 4 plus 1 plus 0 plus 1 plus 4, divided by 5, which equals 2.")
]
#only("3")[
#voiceover("Therefore, the variance of this data set is 2.")
]
#only("4")[
#voiceover("This plot visualizes the data points in blue and the mean in red. The dashed lines show the differences between each data point and the mean. The longer the lines, the more spread out the data is, and thus, the higher the variance.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Variance measures the spread of data points around the mean 📏]
#v(20pt)
#only("2-")[- Calculate by subtracting mean, squaring differences, and averaging 🧮]
#v(20pt)
#only("3-")[- Higher variance indicates more spread out data 📈]
#only("1")[
#voiceover("In summary, variance is a measure of how far individual data points are from the mean.")
]
#only("2")[
#voiceover("To calculate it, subtract the mean from each data point, square the differences, and then find the average of those squared differences.")
]
#only("3")[
#voiceover("A higher variance indicates that the data points are more spread out, while a lower variance suggests the data points are clustered closely around the mean.")
]
]