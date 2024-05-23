#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Growth Models]
#v(40pt)
What type of growth is indicated by a constant percentage increase? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Linear]#only("2-")[#text(fill:red)[a) Linear]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Exponential]#only("3-")[#text(fill:green)[b) Exponential]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Logarithmic]#only("4-")[#text(fill:red)[c) Logarithmic]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Polynomial]#only("5-")[#text(fill:red)[d) Polynomial]]
#only("1")[#voiceover("Not quite. Let's review the correct solution to understand why a constant percentage increase indicates exponential growth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear vs Exponential Growth]
#v(40pt)
#only("1-")[- Linear growth: constant #text(weight: "bold")[amount] added each time period]
#v(20pt)
#only("2-")[Example: $2, 4, 6, 8, ...$]
#v(20pt)
#only("3-")[- Exponential growth: constant #text(weight: "bold")[percentage] increase each time period]
#v(20pt)
#only("4-")[Example: $2, 4, 8, 16, ...$]

#only("1")[#voiceover("Let's understand the difference between linear and exponential growth.")]
#only("2")[#voiceover("In linear growth, a constant amount is added in each time period. For example, the sequence 2, 4, 6, 8, and so on, where 2 is added each time.")]
#only("3")[#voiceover("On the other hand, exponential growth involves a constant percentage increase in each time period.")]
#only("4")[#voiceover("For instance, the sequence 2, 4, 8, 16, and so on, where the value doubles or increases by 100% each time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Comparison]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.arange(0, 5)
linear = 2 * x
exponential = 2 ** x

plt.figure(figsize=(8, 6))
plt.plot(x, linear, 'o-', label='Linear')
plt.plot(x, exponential, 'o-', label='Exponential')
plt.xlabel('Time')
plt.ylabel('Value')
plt.title('Linear vs Exponential Growth')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual comparison:]
#v(20pt)
#only("2-")[- #text(fill:blue)[Linear] growth is a straight line 📈]
#only("3-")[- #text(fill:orange)[Exponential] growth curves upward 🚀]

#only("1")[#voiceover("Let's visually compare linear and exponential growth.")]
#only("2")[#voiceover("Linear growth, shown in blue, forms a straight line when plotted. The increase is constant over time.")]
#only("3")[#voiceover("Exponential growth, depicted in orange, curves upward, showing that the rate of increase itself increases over time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Real-World Examples]
#v(40pt)
#only("1-")[Linear Growth:]
#only("2-")[- Saving a fixed amount each month 💰]
#v(20pt)
#only("3-")[Exponential Growth:]
#only("4-")[- Population growth 👨‍👩‍👧‍👦]
#only("5-")[- Compound interest 📈]

#only("1")[#voiceover("Now, let's consider some real-world examples of these growth models.")]
#only("2")[#voiceover("An example of linear growth is saving a fixed amount of money each month. The total savings will increase linearly over time.")]
#only("3")[#voiceover("Examples of exponential growth are more common in real life.")]
#only("4")[#voiceover("Population growth often follows an exponential model, as the number of people increases by a percentage each year.")]
#only("5")[#voiceover("Compound interest is another example, where the interest earned is reinvested, leading to exponential growth of the investment over time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear growth: constant #text(weight: "bold")[addition] ➕]
#v(20pt)
#only("2-")[- Exponential growth: constant #text(weight: "bold")[multiplication] ✖️]
#v(20pt)
#only("3-")[A constant percentage increase indicates #text(weight: "bold", fill:green)[exponential] growth! 🌱➡️🌳]

#only("1")[#voiceover("To summarize, linear growth involves a constant addition in each time period.")]
#only("2")[#voiceover("Exponential growth, on the other hand, involves constant multiplication or a constant percentage increase.")]
#only("3")[#voiceover("Therefore, a constant percentage increase, as mentioned in the question, is a clear indicator of exponential growth.")]
]