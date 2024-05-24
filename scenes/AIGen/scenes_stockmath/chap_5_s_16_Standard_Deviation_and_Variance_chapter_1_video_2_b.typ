#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation]
#v(40pt)
Standard deviation is the square root of which of the following?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Mean]#only("2-")[#text(fill:red)[a) Mean]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Median]#only("3-")[#text(fill:red)[b) Median]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Mode]#only("4-")[#text(fill:red)[c) Mode]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Variance]#only("5-")[#text(fill:green)[d) Variance]]

#only("1")[#voiceover("That's okay, let's review the correct solution. The standard deviation is the square root of the variance.")]
#only("2")[#voiceover("The mean is incorrect. The mean is the average of a set of numbers, but the standard deviation is not the square root of the mean.")]
#only("3")[#voiceover("The median is also incorrect. The median is the middle value when a data set is ordered from least to greatest, but the standard deviation is not the square root of the median.")]
#only("4")[#voiceover("The mode is incorrect as well. The mode is the value that appears most often in a set of data, but the standard deviation is not the square root of the mode.")]
#only("5")[#voiceover("The correct answer is d) Variance. The standard deviation is defined as the square root of the variance.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's understand this step-by-step:]
#v(20pt)
#only("2-")[1. Variance ($sigma^2$) measures how far a set of numbers are spread out from their average value.]
#v(10pt)
#only("3-")[2. It is calculated using the formula: $sigma^2 = (sum_(i=1)^n (x_i - bar(x))^2)/(n-1)$]
#v(10pt)
#only("4-")[3. Standard Deviation ($sigma$) is the square root of variance: $sigma = sqrt(sigma^2)$]
#v(10pt)
#only("5-")[4. Therefore, Standard Deviation is the square root of Variance. 📏]

#only("1")[#voiceover("Let's go through this step-by-step to understand why the standard deviation is the square root of the variance.")]
#only("2")[#voiceover("First, let's recall what variance is. Variance, denoted by sigma squared, measures how far a set of numbers are spread out from their average value.")]
#only("3")[#voiceover("It is calculated using this formula, where x_i are the individual values, x-bar is the mean of those values, and n is the number of values.")]
#only("4")[#voiceover("Now, Standard Deviation, denoted by sigma, is defined as the square root of the variance. This is the key relationship.")]
#only("5")[#voiceover("Therefore, we can conclude that the Standard Deviation is indeed the square root of the Variance.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.random.normal(10, 2, 1000)

# Create a figure and axes
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the histogram
ax.hist(x, bins=20, edgecolor='black', alpha=0.7)

# Add labels and title
ax.set_xlabel('Value')
ax.set_ylabel('Frequency')
ax.set_title('Distribution with Mean and Standard Deviation')

# Calculate mean and standard deviation
mean = np.mean(x)
std = np.std(x)

# Add vertical lines for mean and standard deviation
ax.axvline(mean, color='red', linestyle='dashed', linewidth=2, label='Mean')
ax.axvline(mean + std, color='green', linestyle='dashed', linewidth=2, label='Mean + Std')
ax.axvline(mean - std, color='green', linestyle='dashed', linewidth=2, label='Mean - Std')

# Add legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual representation: 📊]
#v(20pt)
#only("2-")[- The #text(fill:red)[red line] represents the #text(weight: "bold")[mean].]
#only("3-")[- The #text(fill:green)[green lines] are one #text(weight: "bold")[standard deviation] away from the mean.]
#only("4-")[- The spread of the data around the mean is related to the variance.]
#only("5-")[- The standard deviation is the square root of this spread (variance).]

#only("1")[#voiceover("Let's look at a visual representation to further solidify our understanding.")]
#only("2")[#voiceover("In this histogram, the red line represents the mean of the data.")]
#only("3")[#voiceover("The green lines are exactly one standard deviation away from the mean on either side.")]
#only("4")[#voiceover("Notice how the spread of the data around the mean is related to the variance. The more spread out the data is, the larger the variance.")]
#only("5")[#voiceover("And the standard deviation, being the square root of the variance, is a measure of this spread. It tells us, on average, how far each value in the data set is from the mean.")]
]