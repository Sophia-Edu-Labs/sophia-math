#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Value of $2^3$]
#v(40pt)
#only("1")[
#voiceover("Let's explore the value of two raised to the power of three.")
]
#only("2-")[
#text(size: 24pt)[What does $2^3$ mean?]
]
#v(20pt)
#only("3-")[
#text(size: 24pt)[It means multiplying 2 by itself 3 times.]
]
#v(20pt)
#only("4-")[
#text(size: 24pt)[$2^3 = 2 \cdot 2 \cdot 2$]
]
#v(20pt)
#only("5-")[
#text(size: 24pt)[Let's visualize it.]
]
#v(20pt)
#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Define the base and exponent
base = 2
exponent = 3

# Calculate the value
value = base ** exponent

# Create the plot
fig, ax = plt.subplots()
ax.bar(['2', '2', '2'], [2, 2, 2], color='blue')
ax.set_ylim(0, 3)
ax.set_ylabel('Value')
ax.set_title('Visualization of $2^3$')

# Annotate the bars
for i, v in enumerate([2, 2, 2]):
    ax.text(i, v + 0.1, str(v), ha='center', color='black', fontweight='bold')

# Show the plot
plt.show()

```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("What does two to the power of three mean?")
]
#only("3")[
#voiceover("It means multiplying two by itself three times.")
]
#only("4")[
#voiceover("So, two to the power of three equals two times two times two.")
]
#only("5")[
#voiceover("Let's visualize this multiplication.")
]
#only("6")[
#voiceover("Here, we see three twos being multiplied together.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $2^3$?", 
answerOptions: ("$\text{Answer: } 8$", "$\text{Answer: } -12$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Answer: } \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)