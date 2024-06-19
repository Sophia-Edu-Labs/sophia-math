#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mean]
#v(40pt)
#only("1-")[- Mean: The average value of a set of numbers 📊]
#v(20pt)
#only("2-")[- Formula: $"mean" = ("sum of all values") / ("number of values")$]
#v(20pt)
#only("3-")[- Example Set: $1, 3, 5, 7, 9, 11$]
#v(20pt)
#only("4-")[- Sum of values: $1 + 3 + 5 + 7 + 9 + 11$]
#v(20pt)
#only("5-")[- Number of values: $6$]
#v(20pt)
#only("6-")[- Mean: $(1 + 3 + 5 + 7 + 9 + 11) / 6$]
#v(20pt)
#only("7-")[- Mean: $36 / 6 = 6$]
#only("1")[
#voiceover("Not quite. Let's review the correct solution and talk about the mean, which is the average value of a set of numbers.")
]
#only("2")[
#voiceover("The formula for the mean is the sum of all values divided by the number of values.")
]
#only("3")[
#voiceover("Consider the example set 1, 3, 5, 7, 9, 11.")
]
#only("4")[
#voiceover("First, we sum up all the values: 1 plus 3 plus 5 plus 7 plus 9 plus 11.")
]
#only("5")[
#voiceover("Next, we count the number of values, which is 6.")
]
#only("6")[
#voiceover("Now, we divide the sum by the number of values: 36 divided by 6.")
]
#only("7")[
#voiceover("So, the mean of the set is 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Step 1: Identify the set of numbers 📋]
#v(20pt)
#only("2-")[- Step 2: Sum all the numbers ➕]
#v(20pt)
#only("3-")[- Step 3: Count the number of values 🔢]
#v(20pt)
#only("4-")[- Step 4: Divide the sum by the number of values ➗]
#v(20pt)
#only("5-")[- Result: The mean is $6$ 🎉]
#only("1")[
#voiceover("Let's go through the solution step-by-step.")
]
#only("2")[
#voiceover("Step 1: Identify the set of numbers, which is 1, 3, 5, 7, 9, 11.")
]
#only("3")[
#voiceover("Step 2: Sum all the numbers: 1 plus 3 plus 5 plus 7 plus 9 plus 11 equals 36.")
]
#only("4")[
#voiceover("Step 3: Count the number of values, which is 6.")
]
#only("5")[
#voiceover("Step 4: Divide the sum by the number of values: 36 divided by 6 equals 6. So, the mean is 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Mean]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
``` 
import matplotlib.pyplot as plt

values = [1, 3, 5, 7, 9, 11]
mean_value = sum(values) / len(values)

plt.plot(values, 'bo-', label='Values')
plt.axhline(y=mean_value, color='r', linestyle='--', label=f'Mean = {mean_value}')
plt.xlabel('Index')
plt.ylabel('Value')
plt.title('Visualizing the Mean')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- The red dashed line represents the mean value.]
#only("1")[
#voiceover("Let's visualize the mean. The blue dots represent the values in the set, and the red dashed line represents the mean value.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mean: A measure of central tendency 📏]
#v(20pt)
#only("2-")[- Calculated as: $("sum of all values") / ("number of values")$]
#v(20pt)
#only("3-")[- Example: Mean of $1, 3, 5, 7, 9, 11$ is $6$]
#only("1")[
#voiceover("In conclusion, the mean is a measure of central tendency that gives us the average value of a set of numbers.")
]
#only("2")[
#voiceover("It is calculated as the sum of all values divided by the number of values.")
]
#only("3")[
#voiceover("In our example, the mean of the set 1, 3, 5, 7, 9, 11 is 6.")
]
]