#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Free Electrons in a Conductor]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a 2x1x1 cube
x = [0, 2, 2, 0, 0]
y = [0, 0, 1, 1, 0]
z = [0, 0, 0, 0, 0]

# Bottom face
ax.plot(x, y, z, 'b')
# Top face
ax.plot(x, y, [1]*5, 'b')
# Vertical edges
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 1], 'b')

# Add dots representing electrons
np.random.seed(42)
num_electrons = 20
x_electrons = np.random.rand(num_electrons) * 2
y_electrons = np.random.rand(num_electrons)
z_electrons = np.random.rand(num_electrons)

ax.scatter(x_electrons, y_electrons, z_electrons, c='r', s=50, alpha=0.6)

ax.set_xlabel('Length (mm)')
ax.set_ylabel('Width (mm)')
ax.set_zlabel('Height (mm)')
ax.set_title('2 mm³ Conductor with Free Electrons')

plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: []
        )
      ]
    ]
  ]]

  #only("2-")[
    - Given: 1000 free electrons per mm³
    - Volume: 2 mm³
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: How many free electrons in total? 🤔]
  ]

  #only("1")[
    #voiceover("That's not quite correct. Let's walk through the solution step by step. Here we have a visualization of a 2 cubic millimeter conductor with some free electrons represented as red dots.")
  ]

  #only("2")[
    #voiceover("We're given that there are 1000 free electrons per cubic millimeter, and we're looking at a volume of 2 cubic millimeters.")
  ]

  #only("3")[
    #voiceover("Our task is to determine the total number of free electrons in this 2 cubic millimeter volume.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution Approach]
  #v(40pt)

  #only("1-")[
    1️⃣ Identify the given information
  ]

  #only("2-")[
    2️⃣ Set up the calculation
  ]

  #only("3-")[
    3️⃣ Perform the multiplication
  ]

  #only("1")[
    #voiceover("To solve this problem, we'll follow a simple three-step approach. First, we'll identify the given information.")
  ]

  #only("2")[
    #voiceover("Next, we'll set up the calculation based on this information.")
  ]

  #only("3")[
    #voiceover("Finally, we'll perform the multiplication to get our answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Given Information]
  #v(40pt)

  #only("1-")[
    - Electron density: 1000 electrons/mm³
  ]

  #only("2-")[
    - Volume of conductor: 2 mm³
  ]

  #only("1")[
    #voiceover("Let's start with what we know. We're given that there are 1000 free electrons in each cubic millimeter of the conductor.")
  ]

  #only("2")[
    #voiceover("We're also told that we're looking at a volume of 2 cubic millimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Set Up Calculation]
  #v(40pt)

  #only("1-")[
    Total electrons = Electron density × Volume
  ]

  #only("2-")[
    $"Total electrons" = 1000 "electrons"/"mm"^3 × 2 "mm"^3$
  ]

  #only("1")[
    #voiceover("Now, let's set up our calculation. To find the total number of electrons, we need to multiply the electron density by the volume.")
  ]

  #only("2")[
    #voiceover("So, we'll multiply 1000 electrons per cubic millimeter by 2 cubic millimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Perform Multiplication]
  #v(40pt)

  #only("1-")[
    $"Total electrons" = 1000 "electrons"/"mm"^3 × 2 "mm"^3$
  ]

  #only("2-")[
    $"Total electrons" = 2000 "electrons"$
  ]

  #only("1")[
    #voiceover("Let's perform the multiplication. We have 1000 electrons per cubic millimeter times 2 cubic millimeters.")
  ]

  #only("2")[
    #voiceover("This gives us a total of 2000 electrons.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt, weight: "bold")[There are 2000 free electrons in 2 mm³ of the conductor. 🎉]
  ]

  #only("2-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a 2x1x1 cube
x = [0, 2, 2, 0, 0]
y = [0, 0, 1, 1, 0]
z = [0, 0, 0, 0, 0]

# Bottom face
ax.plot(x, y, z, 'b')
# Top face
ax.plot(x, y, [1]*5, 'b')
# Vertical edges
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 1], 'b')

# Add dots representing electrons
np.random.seed(42)
num_electrons = 200  # Adjusted for visibility
x_electrons = np.random.rand(num_electrons) * 2
y_electrons = np.random.rand(num_electrons)
z_electrons = np.random.rand(num_electrons)

ax.scatter(x_electrons, y_electrons, z_electrons, c='r', s=20, alpha=0.6)

ax.set_xlabel('Length (mm)')
ax.set_ylabel('Width (mm)')
ax.set_zlabel('Height (mm)')
ax.set_title('2 mm³ Conductor with 200 Free Electrons')

plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: []
        )
      ]
    ]
  ]]

  #only("1")[
    #voiceover("So, our final answer is that there are 2000 free electrons in 2 cubic millimeters of the conductor.")
  ]

  #only("2")[
    #voiceover("Here's a visual representation of what 2000 electrons might look like in our 2 cubic millimeter volume. Each red dot represents 10 electrons for visibility. This gives us a sense of how densely packed these free electrons are within the conductor.")
  ]
]