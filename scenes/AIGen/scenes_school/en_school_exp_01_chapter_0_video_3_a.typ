#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Excellent explanation! You clearly understand the key differences between linear and exponential growth. Let's summarize the main points.")
]

#text(size: 30pt, weight: "bold")[Linear vs Exponential Growth]

#v(40pt)

#only("2-")[- Linear growth: constant addition 📈]
// The linear growth point is shown from slide 2 onward

#only("3-")[- Exponential growth: constant multiplication 🚀]
// The exponential growth point is shown from slide 3 onward

#only("2")[
#voiceover("Linear growth is characterized by a constant addition. The amount added remains the same over time.")
]

#only("3")[
#voiceover("On the other hand, exponential growth involves constant multiplication. The growth rate is proportional to the current value.")
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

x = np.linspace(0, 10, 100)
linear = 2 + 0.5 * x
exponential = 2 * np.exp(0.3 * x)

plt.figure(figsize=(8, 6))
plt.plot(x, linear, 'b-', label='Linear')
plt.plot(x, exponential, 'r-', label='Exponential')
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
// The graph comparing linear and exponential growth is shown from slide 1 onward

#only("1")[
#voiceover("This graph illustrates the difference between linear and exponential growth over time. The blue line represents linear growth, while the red curve shows exponential growth.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Examples]

#v(40pt)

#only("1-")[- Linear: constant salary increase 💰]
// The linear growth example is shown from slide 1 onward

#only("2-")[- Exponential: population growth 👨‍👩‍👧‍👦]
// The exponential growth example is shown from slide 2 onward

#only("1")[
#voiceover("An example of linear growth is a constant salary increase, where the same amount is added each year.")
]

#only("2")[
#voiceover("Population growth is a classic example of exponential growth, where the growth rate depends on the current population size.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Linear growth: arithmetic progression 🧮]
// The linear growth takeaway is shown from slide 1 onward

#only("2-")[- Exponential growth: geometric progression 📈]
// The exponential growth takeaway is shown from slide 2 onward

#only("3-")[- Exponential growth outpaces linear over time 🏃‍♂️]
// The comparison takeaway is shown from slide 3 onward

#only("1")[
#voiceover("In summary, linear growth follows an arithmetic progression, with a constant difference between consecutive terms.")
]

#only("2")[
#voiceover("Exponential growth, on the other hand, follows a geometric progression, with a constant ratio between consecutive terms.")
]

#only("3")[
#voiceover("Over time, exponential growth will always outpace linear growth, leading to much larger values in the long run.")
]

]