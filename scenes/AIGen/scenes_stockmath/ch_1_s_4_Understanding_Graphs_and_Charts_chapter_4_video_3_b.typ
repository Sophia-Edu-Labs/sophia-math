#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Share]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
sizes = [25, 75]
labels = ['Company Share', 'Rest of Market']
colors = ['#1f77b4', '#ff7f0e']

# Create a pie chart
plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)

# Add a title
plt.title('Market Share')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]
// The pie chart shows the company's 25% market share
#v(40pt)
#only("-1")[- Company's share: $25%$]#only("2-")[- Company's share: $25%$ = $\$50$ million]
// The company's share is given as 25% on slide 1, and calculated as $50 million from slide 2 onward
#v(20pt)  
#only("-2")[- Total market: $\$200$ million]#only("3-")[- Total market: $\$200$ million]
// The total market size is given as $200 million on slide 2 and repeated on slide 3
#only("1")[
#voiceover("Incorrect answer. Let's take a look at the correct solution. The company's market share is given as 25% in the pie chart.")
]
#only("2")[  
#voiceover("We also know that the total market is worth 200 million dollars. To calculate the company's share in dollars, we can take 25% of 200 million.")
]
#only("3")[
#voiceover("25% of 200 million is 0.25 times 200 million, which equals 50 million dollars. So the company's share in dollars is 50 million dollars. Well done!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
#only("1-")[Company's share in dollars:]
#v(20pt)
#only("2-")[$ 25% × \$200$ million]
#v(20pt)
#only("3-")[$ 0.25 × \$200$ million]
#v(20pt)  
#only("4-")[$ \$50$ million]
// The calculation is shown step by step from slide 2 to 4
#only("1")[
#voiceover("Let's go through the calculation step by step. To find the company's share in dollars, we multiply their percentage share by the total market value.")
]
#only("2")[
#voiceover("So we multiply 25% by 200 million dollars.")
]
#only("3")[
#voiceover("25% is the same as 0.25. So we have 0.25 times 200 million dollars.")
]
#only("4")[
#voiceover("0.25 times 200 million equals 50 million dollars. Therefore, the company's share in dollars is 50 million dollars. 🌟")
]
]