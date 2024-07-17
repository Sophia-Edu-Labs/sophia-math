#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Deaths]
#v(40pt)
#only("1-")[- Option a) $0.01$]
#only("2-")[- Option b) $0.015$]
#only("3-")[- Option c) $0.02$]
#only("4-")[- Option d) $0.025$]

#only("1")[#voiceover("Let's review the correct solution step-by-step.")]
#only("2")[#voiceover("Option a) zero point zero one is incorrect. This value is too low.")]
#only("3")[#voiceover("Option b) zero point zero one five is correct. This is calculated as one hundred fifty divided by ten thousand.")]
#only("4")[#voiceover("Option c) zero point zero two is incorrect. This value is too high.")]
#only("5")[#voiceover("Option d) zero point zero two five is also incorrect. This value is too high.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Breakdown]
#v(40pt)
#only("1-")[- The relative frequency is calculated as the number of deaths divided by the total population.]
#v(10pt)
#only("2-")[- In this case, $150$ deaths divided by $10,000$ people.]
#v(10pt)
#only("3-")[- This gives us $0.015$.]

#only("1")[#voiceover("To find the relative frequency, we divide the number of deaths by the total population.")]
#only("2")[#voiceover("Here, we have one hundred fifty deaths divided by ten thousand people.")]
#only("3")[#voiceover("This calculation gives us zero point zero one five.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Data
categories = ['Deaths', 'Total Population']
values = [150, 10000]

# Plot
fig, ax = plt.subplots()
bars = ax.bar(categories, values, color=['red', 'blue'])

# Add value labels on top of the bars
for bar in bars:
    height = bar.get_height()
    ax.annotate(f'{height}',
                xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3),  # 3 points vertical offset
                textcoords="offset points",
                ha='center', va='bottom')

ax.set_ylabel('Number of People')
ax.set_title('Relative Frequency Calculation')
ax.set_ylim(0, 11000)  # Adjust y-axis limit for better context

plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- The red bar represents the number of deaths.]
#v(10pt)
#only("2-")[- The blue bar represents the total population.]

#only("1")[#voiceover("Here is a visual representation of the data.")]
#only("2")[#voiceover("The red bar represents the number of deaths.")]
#only("3")[#voiceover("The blue bar represents the total population.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- The correct relative frequency is $0.015$.]
#v(10pt)
#only("2-")[- This is calculated as $150/10,000$.]

#only("1")[#voiceover("In conclusion, the correct relative frequency is zero point zero one five.")]
#only("2")[#voiceover("This is calculated as one hundred fifty divided by ten thousand.")]
]