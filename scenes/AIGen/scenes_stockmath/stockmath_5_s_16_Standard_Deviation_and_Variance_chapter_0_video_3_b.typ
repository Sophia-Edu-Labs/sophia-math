#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Variance]
#v(40pt)
#only("1-")[Data set: $[4, 8, 6, 5, 3]$]
#v(20pt)
#only("2-")[Step 1: Calculate the mean $bar(x) = (sum x_i) / n$]
#v(20pt) 
#only("3-")[Step 2: Subtract mean from each value and square: $(x_i - bar(x))^2$]
#v(20pt)
#only("4-")[Step 3: Sum squared differences: $sum (x_i - bar(x))^2$]
#v(20pt)
#only("5-")[Step 4: Divide by $(n-1)$ to get variance]
#only("1")[
#voiceover("Unfortunately, that's not the correct answer. Let's review the correct solution for calculating the variance for the data set 4, 8, 6, 5, 3.")
]
#only("2")[  
#voiceover("The first step is to calculate the mean of the data set. The mean, denoted x bar, is equal to the sum of all values divided by the number of values.")
]
#only("3")[
#voiceover("Next, we subtract the mean from each value and square the result. This gives us the squared differences from the mean for each value.")
]
#only("4")[
#voiceover("Then, we sum up all these squared differences.")
]
#only("5")[
#voiceover("Finally, we divide this sum by n minus 1, where n is the number of values, to get the variance. Here, n minus 1 is used instead of n to get an unbiased estimate of the population variance from a sample.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)  
#only("1-")[Given: Data set $[4, 8, 6, 5, 3]$]
#v(20pt)
#only("2-")[Step 1: $bar(x) = (4 + 8 + 6 + 5 + 3) / 5 = 5.2$]
#v(20pt)
#only("3-")[Step 2: $(4 - 5.2)^2 = 1.44$, $(8 - 5.2)^2 = 7.84$, ...]
#v(20pt)  
#only("4-")[Step 3: $1.44 + 7.84 + 0.64 + 0.04 + 4.84 = 14.8$]
#v(20pt)
#only("5-")[Step 4: Variance $= 14.8 / (5-1) = 3.7$]
#only("1")[
#voiceover("We are given the data set 4, 8, 6, 5, 3.")
]
#only("2")[
#voiceover("In step 1, we calculate the mean by adding up all the values and dividing by the number of values. This gives us a mean of 5.2.")
]
#only("3")[
#voiceover("For step 2, we subtract the mean 5.2 from each value and square the result. For example, 4 minus 5.2 squared equals 1.44, 8 minus 5.2 squared equals 7.84, and so on for the other values.")
]  
#only("4")[
#voiceover("In step 3, we sum up all these squared differences. 1.44 plus 7.84 plus 0.64 plus 0.04 plus 4.84 equals 14.8.")
]
#only("5")[  
#voiceover("Finally in step 4, we divide 14.8 by n minus 1, which is 5 minus 1 equals 4. This gives us the variance of 3.7.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

data = [4, 8, 6, 5, 3]
mean = np.mean(data)

plt.figure(figsize=(6, 4))
plt.plot(data, 'bo-', label='Data')
plt.axhline(mean, color='r', linestyle='--', label='Mean')

for i, val in enumerate(data):
    plt.plot([i, i], [val, mean], 'k--')
    plt.text(i, (val + mean) / 2, f'(x{i+1} - x̄)² = {(val - mean)**2:.2f}', fontsize=12, ha='center', va='center')

plt.xlabel('Index')  
plt.ylabel('Value')
plt.title('Variance Visualization')
plt.legend()
plt.tight_layout()
plt.show()
```, 
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization to help understand the variance calculation. The blue dots and line represent our data values, while the red dashed line is the mean. The black dashed lines show the difference of each value from the mean, and the text labels show these differences squared, which are the values we sum and divide by n-1 to get the variance.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Variance measures the spread of data 📏]
#v(20pt)  
#only("2-")[Key steps: mean, squared differences, sum, divide 🧮]
#v(20pt)
#only("3-")[Variance = $sum (x_i - bar(x))^2 / (n-1)$ 📜]
#only("1")[
#voiceover("In summary, variance is a measure of how spread out a set of data is.")
]
#only("2")[  
#voiceover("The key steps to calculate it are finding the mean, calculating the squared differences from the mean, summing these squared differences, and dividing by n minus 1.")
]
#only("3")[
#voiceover("The formula for variance is the sum of x_i minus x_bar squared, all divided by n minus 1, where x_i are the individual values, x_bar is the mean, and n is the number of values.")
]
]