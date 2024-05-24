#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Variance]
#v(40pt)
#only("1-")[What does variance measure in a data set?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Central tendency]#only("2-")[#text(fill:red)[a) Central tendency]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Spread around the mean]#only("3-")[#text(fill:green)[b) Spread around the mean]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Maximum value]#only("4-")[#text(fill:red)[c) Maximum value]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Minimum value]#only("5-")[#text(fill:red)[d) Minimum value]]

#only("1")[#voiceover("That's not correct, but let's look at the right solution.")]
#only("2")[#voiceover("a) Central tendency is incorrect. Measures of central tendency, like the mean, median, and mode, describe the center or typical value of a data set, not the spread.")]
#only("3")[#voiceover("b) Spread around the mean is the correct answer. Variance measures how far each value in the data set is from the mean.")]
#only("4")[#voiceover("c) Maximum value is incorrect. The maximum value is just the largest value in the data set, not a measure of spread.")]
#only("5")[#voiceover("d) Minimum value is also incorrect, for similar reasons as the maximum value.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance: Step-by-Step]
#v(40pt)
#only("1-")[1. Calculate the mean of the data set]
#v(20pt)
#only("2-")[2. For each data point, calculate the squared difference from the mean]
#v(20pt)
#only("3-")[3. Sum these squared differences]

#only("1")[#voiceover("Let's go through the steps to calculate variance.")]
#only("2")[#voiceover("First, for each data point, calculate how far it is from the mean by subtracting the mean from the data point and squaring the result. This gives you the squared differences.")]
#only("3")[#voiceover("Next, add up all of these squared differences.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance: Step-by-Step (Continued)]
#v(40pt)
#only("1-")[1. Divide by the number of data points (for population variance) or by the number of data points minus 1 (for sample variance)]
#v(40pt)
#only("2-")[Mathematically:]
#v(20pt)
#only("3-")[Population Variance: $σ^2 = 1/N sum_(i=1)^N (x_i - μ)^2$]
#v(20pt)
#only("4-")[Sample Variance: $s^2 = 1/(N-1) sum_(i=1)^N (x_i - x)^2$]
#v(20pt)
#only("5-")[where $N$ is the number of data points, $x_i$ is each individual data point, $μ$ is the population mean, and $x$ is the sample mean.]

#only("1")[#voiceover("Finally, divide this sum by the total number of data points if you're calculating the variance of a population, or by the number of data points minus 1 if you're calculating the variance of a sample.")]
#only("2-5")[#voiceover("Mathematically, the formula for population variance is sigma squared equals 1 over N times the sum from i equals 1 to N of x sub i minus mu, all squared, where N is the number of data points, x sub i is each individual data point, and mu is the population mean. For sample variance, the formula is similar, but we use s squared instead of sigma squared, N minus 1 in the denominator instead of N, and x bar, the sample mean, instead of mu.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance: Visual Intuition]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
np.random.seed(42)
data1 = np.random.normal(0, 1, 1000)
data2 = np.random.normal(0, 5, 1000)

# Create subplots
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot data1
ax1.hist(data1, bins=20, edgecolor='black', alpha=0.7)
ax1.set_title('Low Variance')
ax1.set_xlabel('Value')
ax1.set_ylabel('Frequency')

# Plot data2
ax2.hist(data2, bins=20, edgecolor='black', alpha=0.7)
ax2.set_title('High Variance')
ax2.set_xlabel('Value')
ax2.set_ylabel('Frequency')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here are two data sets with different variances:]
#v(20pt)
#only("2-")[- The data set on the left has a #text(fill:green)[low variance]. The data points are clustered closely around the mean.]
#only("3-")[- The data set on the right has a #text(fill:red)[high variance]. The data points are spread out more from the mean.]

#only("1")[#voiceover("Let's look at a visual representation of variance.")]
#only("2")[#voiceover("In the first graph, we see a data set with low variance. Notice how the data points are bunched up closely around the center. This means each data point is, on average, quite close to the mean.")]
#only("3")[#voiceover("In contrast, the second graph shows a data set with high variance. Here, the data points are much more spread out from the center. Each data point, on average, is further away from the mean.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variance: Key Takeaways]
#v(40pt)
#only("1-")[- Variance is a measure of #text(weight: "bold")[spread] 📏]
#v(20pt)
#only("2-")[- It quantifies how far, on average, data points are from the #text(weight: "bold")[mean] 🎯]
#v(20pt)
#only("3-")[- A #text(fill:green)[low variance] means data points are #text(weight: "bold")[close] to the mean 🎮]
#v(20pt)
#only("4-")[- A #text(fill:red)[high variance] means data points are #text(weight: "bold")[spread out] from the mean 🎲]
#v(20pt)
#only("5-")[- It's a crucial descriptive statistic for understanding data distribution 📊]

#only("1")[#voiceover("In summary, variance is a measure of spread in a data set.")]
#only("2")[#voiceover("It quantifies, on average, how far each data point is from the mean of the data set.")]
#only("3")[#voiceover("A low variance indicates that the data points tend to be very close to the mean.")]
#only("4")[#voiceover("While a high variance indicates that the data points are spread out over a wider range of values away from the mean.")]
#only("5")[#voiceover("Understanding variance gives you a powerful tool in understanding the distribution of your data.")]
]