#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1-")[- Exercise: Multiply 4 by 2/3. Options: a) 4/3 b) 6/3 c) 8/3 d) 10/3]
#v(20pt)
#only("2-")[#text(fill:green)[- c) 8/3]]
#v(20pt)
#only("3-")[#text(fill:red)[- a) 4/3]]
#v(20pt)
#only("4-")[#text(fill:red)[- b) 6/3]]
#v(20pt)
#only("5-")[#text(fill:red)[- d) 10/3]]
#only("1")[#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("The correct answer is c) 8/3. Now, let's see why this is the correct answer.")]
#only("3")[#voiceover("Option a) 4/3 is incorrect. When you multiply 4 by 2/3, you multiply the numerator 4 by 2, not by 1.")]
#only("4")[#voiceover("Option b) 6/3 is also incorrect. This would be the result if you multiplied 3 by 2/3, not 4.")]
#only("5")[#voiceover("Option d) 10/3 is incorrect as well. This would be the result if you multiplied 5 by 2/3, not 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Step 1: Write the integer as a fraction: $4 = 4/1$]
#v(20pt)
#only("2-")[- Step 2: Multiply the numerators: $4 dot 2 = 8$]
#v(20pt)
#only("3-")[- Step 3: Multiply the denominators: $1 dot 3 = 3$]
#v(20pt)
#only("4-")[- Step 4: Combine the results: $8/3$]
#only("1")[#voiceover("First, we write the integer 4 as a fraction, which is 4 over 1.")]
#only("2")[#voiceover("Next, we multiply the numerators. Four times two equals eight.")]
#only("3")[#voiceover("Then, we multiply the denominators. One times three equals three.")]
#only("4")[#voiceover("Finally, we combine the results to get eight over three.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Steps]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create the fractions
fractions = ["4/1", "2/3", "8/3"]
values = [4/1, 2/3, 8/3]

# Plotting the fractions
plt.figure(figsize=(8, 6))
plt.bar(fractions, values, color=['blue', 'orange', 'green'])
plt.ylabel('Value')
plt.title('Multiplying Fractions: 4 * 2/3')
plt.ylim(0, max(values) + 1)  # Adjust y-axis for better scaling
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Visualize: $4/1$, $2/3$, $8/3$]
#only("2-")[- $4/1$ is the integer 4 as a fraction.]
#only("3-")[- $2/3$ is the fraction we are multiplying by.]
#only("4-")[- $8/3$ is the final result.]
#only("1")[#voiceover("Let's visualize the steps. Here, we have the fractions four over one, two over three, and the final result, eight over three.")]
#only("2")[#voiceover("Four over one represents the integer four as a fraction.")]
#only("3")[#voiceover("Two over three is the fraction we are multiplying by.")]
#only("4")[#voiceover("Eight over three is the final result of the multiplication.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Multiplying an integer by a fraction: $a dot b/c = (a dot b)/c$]
#v(20pt)
#only("2-")[- Example: $4 dot 2/3 = 8/3$]
#v(20pt)
#only("3-")[- Always multiply the numerators and keep the denominator the same.]
#only("1")[#voiceover("In conclusion, when multiplying an integer by a fraction, you multiply the numerator of the fraction by the integer and keep the denominator the same.")]
#only("2")[#voiceover("For example, four times two-thirds equals eight-thirds.")]
#only("3")[#voiceover("Always remember to multiply the numerators and keep the denominator the same.")]
]