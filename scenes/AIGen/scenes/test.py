import matplotlib.pyplot as plt
import numpy as np
from matplotlib.legend_handler import HandlerPatch
import matplotlib.patches as mpatches

class HandlerCircle(HandlerPatch):
    def create_artists(self, legend, orig_handle,
                        xdescent, ydescent, width, height, fontsize, trans):
        # Adjust the radius here for a smaller circle in the legend
        radius = width // 8  # Decreased radius for a smaller circle
        circle = mpatches.Circle((radius - xdescent + width // 2, height // 2 - ydescent),
                                 radius, facecolor=orig_handle.get_facecolor(),
                                 edgecolor=orig_handle.get_edgecolor(),
                                 linewidth=orig_handle.get_linewidth(), transform=trans)
        return [circle]

# Define initial and additional elements together with two outside elements
elements_coordinates = [(-0.5, 0.5), (0.3, -0.7), (-1.0, -0.2), (1.5, 0), (0, 1)]

# Generate names a, b, c, ... for each element
elements_names = [f'{chr(97+i)}' for i in range(len(elements_coordinates))]

# Convert to dictionary for easy handling
elements = dict(zip(elements_names, elements_coordinates))

# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_aspect('equal')

# Draw the circles representing the sets and rename them to A and B
circle_a = plt.Circle((-0.5, 0), 1.5, color='green', fill=False, linewidth=3, label='Menge A')  # Renamed to Set A
circle_b = plt.Circle((1.2, 0.5), 2, color='orange', fill=False, linewidth=3, label='Menge B')  # Renamed to Set B

# Add the elements to the plot
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='purple')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)  # Label

# Add the circles to the plot
ax.add_artist(circle_a)
ax.add_artist(circle_b)

# Register the custom handler with the modified smaller circle for the legend
plt.legend(handler_map={mpatches.Circle: HandlerCircle()}, fontsize=16, loc='upper left')

# Add grid and clean up axes
ax.grid(True)
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

plt.show()

plt.savefig("test.png")
