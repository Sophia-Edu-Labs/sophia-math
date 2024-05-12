#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Line Chart Interpretation]
#v(40pt)
On a line chart where the y-axis represents price and the x-axis represents time, a downward sloping line indicates what?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Increasing stock price]#only("2-")[#text(fill:red)[a) Increasing stock price]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Decreasing stock price]#only("3-")[#text(fill:green)[b) Decreasing stock price]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Constant stock price]#only("4-")[#text(fill:red)[c) Constant stock price]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("That's correct, great job! Let's look at why that is the right answer.")]
#only("2")[#voiceover("Option a) Increasing stock price is incorrect. An upward sloping line would indicate an increasing stock price, not a downward sloping line.")]
#only("3")[#voiceover("Option b) Decreasing stock price is the correct answer. As time progresses from left to right, a line sloping downwards shows the price is decreasing over time.")]
#only("4")[#voiceover("Option c) Constant stock price is incorrect. A horizontal line would indicate a constant stock price over time.")]
#only("5")[#voiceover("And option d) None of the above is also incorrect, as one of the given options, namely b), is correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Stock Prices]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data for increasing, decreasing, and constant stock prices
time = np.arange(0, 10, 0.1)
increasing_price = time + 10
decreasing_price = -time + 20
constant_price = np.ones_like(time) * 15

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(time, increasing_price, color='green', label='Increasing')
plt.plot(time, decreasing_price, color='red', label='Decreasing')
plt.plot(time, constant_price, color='blue', label='Constant')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Stock Price')
plt.title('Stock Price Over Time')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual:]
#v(20pt)
#only("2-")[- #text(fill:green)[Increasing] stock price: #text(weight: "bold")[upward sloping] line 📈]
#only("3-")[- #text(fill:red)[Decreasing] stock price: #text(weight: "bold")[downward sloping] line 📉]
#only("4-")[- #text(fill:blue)[Constant] stock price: #text(weight: "bold")[horizontal] line ➡]

#only("1")[#voiceover("Let's visualize different stock price trends on a line chart.")]
#only("2")[#voiceover("An increasing stock price over time is represented by an upward sloping line, as the price on the y-axis increases as time on the x-axis progresses.")]
#only("3")[#voiceover("A decreasing stock price, on the other hand, is shown by a downward sloping line. As time moves forward, the price decreases, resulting in a downward slope.")]
#only("4")[#voiceover("Finally, a constant stock price would be a horizontal line, as the price remains the same over time. So remember, the slope of the line tells you the trend of the stock price.")]
]