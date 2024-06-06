#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Population Growth 📈]
#v(40pt)
#only("-1")[- Initial population: 1000]
#only("2-")[- Growth rate: 5% per year]
#only("3-")[- Time: 3 years]
#only("4-")[- Formula: $P_t = P_0 (1 + r)^t$]
#only("5-")[- $P_3 = 1000 (1 + 0.05)^3$]
#only("6-")[- $P_3 = 1000 (1.05)^3$]
#only("7-")[- $P_3 = 1000 * 1.157625$]
#only("8-")[- $P_3 = 1157.625$]
#only("9-")[- $P_3 ≈ 1157.63$ (rounded)]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We're given an initial population of 1000.")
]
#only("2")[
#voiceover("The population is growing at a rate of 5% per year.")
]
#only("3")[
#voiceover("And we want to know the population after 3 years.")
]
#only("4")[
#voiceover("To calculate this, we can use the compound growth formula: P sub t equals P sub 0 times open parenthesis 1 plus r close parenthesis to the power of t, where P sub t is the population at time t, P sub 0 is the initial population, r is the growth rate, and t is the time in years.")
]
#only("5")[
#voiceover("Plugging in our values, we get: P sub 3 equals 1000 times open parenthesis 1 plus 0.05 close parenthesis to the power of 3.")
]
#only("6")[
#voiceover("Simplifying, this becomes: P sub 3 equals 1000 times 1.05 to the power of 3.")
]
#only("7")[
#voiceover("Calculating this, we get: P sub 3 equals 1000 times 1.157625.")
]
#only("8")[
#voiceover("Multiplying, this gives us: P sub 3 equals 1157.625.")
]
#only("9")[
#voiceover("Rounding to two decimal places, our final answer is approximately 1157.63. So after 3 years, the population will be about 1158 individuals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Population Growth Over Time 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Initial population and growth rate
P0 = 1000
r = 0.05

# Time points (in years)
t = np.arange(0, 10)

# Calculate population at each time point
P = P0 * (1 + r)**t

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(t, P, 'bo-', linewidth=2, markersize=8)
plt.xlabel('Time (years)', fontsize=14)
plt.ylabel('Population', fontsize=14)
plt.title('Population Growth Over Time', fontsize=16)
plt.xticks(t)
plt.grid(True)

# Highlight the population at year 3
plt.plot(3, P[3], 'ro', markersize=12)
plt.annotate(f'Population at Year 3: {P[3]:.2f}', xy=(3, P[3]), xytext=(4, P[3]-100), 
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph showing how the population grows over time. The blue line represents the population at each year. You can see the red dot highlighting the population at year 3, which is about 1158, just as we calculated.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Compound growth formula: $P_t = P_0 (1 + r)^t$]
#only("2-")[- Plug in values, simplify, calculate]
#only("3-")[- Graph can visualize growth over time]
#only("1")[
#voiceover("The key points to remember are: The compound growth formula is P sub t equals P sub 0 times open parenthesis 1 plus r close parenthesis to the power of t.")
]
#only("2")[
#voiceover("To use it, plug in the given values, simplify the expression, and then calculate the result.")
]
#only("3")[
#voiceover("A graph can be a helpful tool to visualize how the population grows over time. Great work on this problem!")
]
]