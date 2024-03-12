import matplotlib.pyplot as plt
import numpy as np
# Elements of set A
elements_A = {'a': (-0.8, 0.3), 'b': (-0.4, -0.5), 'c': (0, 0)}
# Elements of set B
elements_B = {'c': (0, 0), 'd': (0.6, 0.4), 'e': (0.4, -0.6)}
# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-1.5, 1.5)
ax.set_ylim(-1.5, 1.5)
ax.set_aspect('equal')
# Draw the circles representing the sets
circle_A = plt.Circle((-0.5, 0), 0.8, color='blue', fill=False, linewidth=3, label='Menge A')
circle_B = plt.Circle((0.5, 0), 0.8, color='green', fill=False, linewidth=3, label='Menge B')
# Add the elements to the sets
for k, v in elements_A.items():

  #Copy code
  ax.plot(v[0], v[1], 'o', color='red') # Point
  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label

for k, v in elements_B.items():

  #Copy code
  ax.plot(v[0], v[1], 'o', color='red') # Point
  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label
  
# Add the circles to the plot
ax.add_artist(circle_A)
ax.add_artist(circle_B)
# Add legend and grid
ax.legend(fontsize=16, loc='upper left')
ax.grid(True)
# Hide the axes for a cleaner look
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.savefig("test.png")