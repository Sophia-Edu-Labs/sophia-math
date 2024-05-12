#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Time Value of Money]
#v(40pt)
#only("1-")[- Money today is worth more than the same amount in the future 💰⏳]
#v(20pt)
#only("2-")[- Due to potential earning capacity 📈]
#only("1")[
#voiceover("The Time Value of Money, or TVM, is the concept that money available today is worth more than the same amount in the future.")
]
#only("2")[
#voiceover("This is because money today has the potential to earn interest or generate income over time.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Illustrative Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 4))

# Define the data
x = np.array([0, 1, 2, 3, 4, 5])
y = np.array([1000, 1050, 1102.5, 1157.63, 1215.51, 1276.28])

# Create the line plot
ax.plot(x, y, marker='o', linestyle='-', color='b')

# Add labels and title
ax.set_xlabel('Years', fontsize=12)
ax.set_ylabel('Value ($)', fontsize=12)
ax.set_title('Growth of $1,000 at 5% Annual Interest', fontsize=14)

# Add grid lines
ax.grid(True, linestyle='--', alpha=0.7)

# Add data labels
for i, j in zip(x, y):
    ax.annotate(f'${j:,.2f}', xy=(i, j), xytext=(0, 10), textcoords='offset points', ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. If you have $1,000 today and you can earn an annual interest rate of 5%, the value of your money will grow over time.")
]
#only("2")[
#voiceover("After one year, your $1,000 will grow to $1,050. After two years, it will be $1,102.50, and so on. This illustrates the time value of money - the same $1,000 is worth more in the future due to its earning potential.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- TVM is a fundamental concept in finance and economics 📚]
#v(20pt)
#only("2-")[- It's the basis for investment decisions and financial planning 📊]
#v(20pt)
#only("3-")[- Understanding TVM helps in making informed financial choices 🧠💡]
#only("1")[
#voiceover("The Time Value of Money is a fundamental concept in finance and economics.")
]
#only("2")[
#voiceover("It forms the basis for making investment decisions and financial planning.")
]
#only("3")[
#voiceover("Understanding the Time Value of Money can help you make informed financial choices, whether it's deciding between spending or investing, or evaluating different investment opportunities.")
]
]