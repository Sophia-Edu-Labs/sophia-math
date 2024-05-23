#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's absolutely correct. Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Linear Population Growth]

#v(40pt)

#only("2-")[- Initial population: 30,000]
#only("3-")[- Annual growth: 3,000]
#only("4-")[- Time period: 10 years]

#only("2")[#voiceover("We're given an initial population of 30,000.")]
#only("3")[#voiceover("The population grows linearly by 3,000 each year.")]
#only("4")[#voiceover("And we want to calculate the population after 10 years.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[Let $P_0$ be the initial population and $P_t$ the population after $t$ years.]
#only("2-")[#text()[$ P_t = P_0 + t \cdot 3000 $]]
#only("3-")[#text()[$ P_{10} = 30000 + 10 \cdot 3000 $]]
#only("4-")[#text()[$ P_{10} = 30000 + 30000 $]]
#only("5-")[#text()[$ P_{10} = 60000 $]]

#only("1")[#voiceover("Let's denote the initial population as P sub 0 and the population after t years as P sub t.")]
#only("2")[#voiceover("The linear growth can be modeled as P sub t equals P sub 0 plus t times 3000.")]
#only("3")[#voiceover("Plugging in the values, we get P sub 10 equals 30000 plus 10 times 3000.")]
#only("4")[#voiceover("Simplifying, this becomes P sub 10 equals 30000 plus 30000.")]
#only("5")[#voiceover("Which gives us a final population of 60000 after 10 years.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

years = np.arange(0, 11)
population = 30000 + 3000 * years

plt.figure(figsize=(8, 6))
plt.plot(years, population, marker='o')
plt.title('Population Growth over 10 Years')
plt.xlabel('Years')
plt.ylabel('Population')
plt.xticks(years)
plt.grid(True)
plt.annotate('Initial Population', xy=(0, 30000), xytext=(1, 35000),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Population after 10 years', xy=(10, 60000), xytext=(7, 55000),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visualization of the population growth over the 10 year period. We can see the linear increase from the initial 30,000 to the final 60,000 after 10 years.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Linear growth: constant increase per time period]
#only("2-")[- Formula: $P_t = P_0 + t · "annual growth"$]
#only("3-")[- Substitute values and simplify to get the result]

#only("1")[#voiceover("The key points to remember are that linear growth involves a constant increase per time period.")]
#only("2")[#voiceover("The formula for linear growth is P sub t equals P sub 0 plus t times the annual growth.")]
#only("3")[#voiceover("And to solve the problem, we substitute the given values into this formula and simplify to get the final result.")]
]