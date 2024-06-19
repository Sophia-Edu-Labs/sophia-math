#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Mode]
#v(40pt)
Which method correctly identifies the mode of a set of numbers?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Add all the numbers and divide by the count]#only("2-")[#text(fill:red)[a) Add all the numbers and divide by the count]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Find the middle number in a sorted set]#only("3-")[#text(fill:red)[b) Find the middle number in a sorted set]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Identify the number that appears most frequently]#only("4-")[#text(fill:green)[c) Identify the number that appears most frequently]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Subtract the smallest number from the largest]#only("5-")[#text(fill:red)[d) Subtract the smallest number from the largest]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's review the options to find the correct method for identifying the mode of a set of numbers.")]
#only("2")[#voiceover("Option a) Add all the numbers and divide by the count is incorrect. This method calculates the mean, not the mode.")]
#only("3")[#voiceover("Option b) Find the middle number in a sorted set is also incorrect. This method identifies the median, not the mode.")]
#only("4")[#voiceover("Option c) Identify the number that appears most frequently is correct. The mode is the number that appears most frequently in a set of numbers.")]
#only("5")[#voiceover("Option d) Subtract the smallest number from the largest is incorrect. This method calculates the range, not the mode.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Finding the Mode]
#v(40pt)
#only("1-")[Consider the set of numbers: $3, 1, 2, 3, 4, 3, 5$]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[Mode: $3$]#only("2-")[#text(fill:green)[Mode: $3$]]
#v(10pt)

#only("1")[#voiceover("Let's consider an example set of numbers: 3, 1, 2, 3, 4, 3, 5.")]
#only("2")[#voiceover("In this set, the number 3 appears most frequently. Therefore, the mode of this set is 3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Mode]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

numbers = [3, 1, 2, 3, 4, 3, 5]
plt.figure(figsize=(8, 6))
plt.hist(numbers, bins=range(1, 7), edgecolor='black', align='left')
plt.xlabel('Number')
plt.ylabel('Frequency')
plt.title('Histogram of Number Frequencies')
plt.axvline(x=3, color='red', linestyle='--', label='Mode: 3')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a histogram of the number frequencies:]
#v(20pt)
#only("2-")[- The red dashed line indicates the mode, which is $3$.]

#only("1")[#voiceover("Here's a histogram of the number frequencies in our example set.")]
#only("2")[#voiceover("The red dashed line indicates the mode, which is 3. As you can see, 3 appears most frequently in the set.")]
]