#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Line Chart Interpretation]
// The title "Line Chart Interpretation" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
y = -x + 10

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue', linewidth=2)
plt.grid(True)
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price Over Time')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The line chart is shown from slide 1 onward
#v(40pt)
#only("2-")[On a line chart where:]
// The introduction to the question is shown from slide 2 onward
#v(20pt)
#only("3-")[- y-axis represents price 💲]
// The y-axis information is shown from slide 3 onward
#v(10pt)
#only("4-")[- x-axis represents time ⏰]
// The x-axis information is shown from slide 4 onward
#v(20pt)
#only("5-")[What does a downward sloping line indicate? 📉]
// The main question is shown from slide 5 onward
#v(20pt)
#only("6-")[a) Increasing stock price]
// Answer option a) is shown from slide 6 onward
#v(10pt)
#only("7-")[b) Decreasing stock price]
// Answer option b) is shown from slide 7 onward
#v(10pt)
#only("8-")[c) Constant stock price]
// Answer option c) is shown from slide 8 onward
#v(10pt)  
#only("9-")[d) None of the above]
// Answer option d) is shown from slide 9 onward
#only("1")[#voiceover("Take a look at this line chart showing stock price over time.")]
#only("2")[#voiceover("On a line chart where")]
#only("3")[#voiceover("the y-axis represents price")]
#only("4")[#voiceover("and the x-axis represents time,")]
#only("5")[#voiceover("what does a downward sloping line indicate?")]
#only("6")[#voiceover("Does it indicate increasing stock price,")]
#only("7")[#voiceover("or decreasing stock price,")]
#only("8")[#voiceover("or constant stock price,")]
#only("9")[#voiceover("or none of the above?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "On a line chart where the y-axis represents price and the x-axis represents time, a downward sloping line indicates what?",
answerOptions: ("Increasing stock price", "Decreasing stock price", "Constant stock price", "None of the above"),
correctAnswerIndex: 1
)