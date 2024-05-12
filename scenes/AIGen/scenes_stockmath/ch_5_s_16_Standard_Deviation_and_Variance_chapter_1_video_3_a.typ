#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation]
#v(40pt)
#only("1-")[
Correct! Great job! 🌟
]
#only("2-")[
To calculate the standard deviation:
]
#only("3-")[
1. Find the mean ($μ$)
]
#only("4-")[
$μ = (10+12+14+16+18)/5 = 14$
]
#only("5-")[  
2. Calculate deviations from mean
]
#only("6-")[
$x_i - μ: -4, -2, 0, 2, 4$  
]
#only("1")[
#voiceover("That's right, great job! You correctly calculated the standard deviation.")
]
#only("2")[  
#voiceover("Let's go through the step-by-step solution to calculate the standard deviation for the data set 10, 12, 14, 16, 18.")
]
#only("3")[
#voiceover("First, we need to find the mean of the data set, which we'll denote by the Greek letter mu.")
]
#only("4")[
#voiceover("To calculate the mean, we add up all the values and divide by the number of data points. In this case, 10 plus 12 plus 14 plus 16 plus 18, divided by 5, equals 14.")
]  
#only("5-6")[
#voiceover("Next, we calculate the deviations from the mean for each data point. We subtract the mean value of 14 from each data point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Standard Deviation (cont.)]
#v(40pt)
#only("1-")[
3. Square the deviations
]
#only("2-")[
$(x_i - μ)^2: 16, 4, 0, 4, 16$
]
#only("3-")[
4. Find the variance ($σ^2$)
]
#only("4-")[
$σ^2 = (16+4+0+4+16)/5 = 8$
]
#only("5-")[
5. Take the square root
]
#only("6-")[
$σ = sqrt(8) = 2.83$
]
#only("1-2")[  
#voiceover("Then, we square each of these deviations. This gives us 16, 4, 0, 4, and 16.")
]
#only("3-4")[
#voiceover("Now, to find the variance, denoted by sigma squared, we add up all these squared deviations and divide by the number of data points. So 16 plus 4 plus 0 plus 4 plus 16, divided by 5, equals 8.")
]
#only("5-6")[
#voiceover("Finally, to get the standard deviation, we take the square root of the variance. The square root of 8 is approximately 2.83.")
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

data = [10, 12, 14, 16, 18]
mean = np.mean(data)

plt.figure(figsize=(8, 6))
plt.plot(data, [0]*5, 'bo', label='Data Points')
plt.axhline(y=0, color='r', linestyle='-', label='Mean')

for i, x in enumerate(data):
    plt.plot([x, x], [0, 0.1], 'b-')
    plt.text(x, -0.1, f'$x_{i+1}$', fontsize=12, ha='center')

plt.text(mean, 0.2, f'$μ={mean}$', fontsize=12, ha='center')

plt.ylim(-0.5, 0.5)
plt.legend(loc='upper right')
plt.grid(True)
plt.title('Data Set and Mean')
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the data set. The blue dots represent each data point, labeled x1 through x5. The red line represents the mean of the data set, which is 14.")
]
#v(40pt)
#only("2-")[
Standard Deviation Formula:
]
#v(20pt)
#only("3-")[
$σ = sqrt((sum ((x_i - μ)^2))/n)$
]
#only("2")[
#voiceover("The standard deviation is a measure of the amount of variation in a set of values, and it's calculated using this formula:")
]  
#only("3")[
#voiceover("The standard deviation, denoted by the Greek letter sigma, equals the square root of the sum of each data point minus the mean, squared, all divided by the number of data points.")
]
]