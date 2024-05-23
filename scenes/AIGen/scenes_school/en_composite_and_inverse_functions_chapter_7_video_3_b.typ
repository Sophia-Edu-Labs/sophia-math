#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's dive into an example scenario where inverse functions are useful.]
#only("1")[
#voiceover("Not quite, but let's review the correct solution together.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Scenario]
#v(40pt)
#only("1-")[In physics, if you know:]
#v(20pt)
#only("2-")[- The final velocity of an object ($v_f$)]
#v(10pt)
#only("3-")[- The time taken ($t$)]
#only("1")[
#voiceover("In physics, a common scenario where inverse functions are useful is when you know the final velocity of an object and the time taken.")
]
#only("2")[
#voiceover("Let's say we know the final velocity, which we'll denote as v sub f.")
]
#only("3")[
#voiceover("And we also know the time taken, which we'll call t.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Velocity Function]
#v(40pt)
#only("1-")[The velocity function is:]
#v(20pt)
#only("2-")[$ v_f = v_0 + at $]
#v(10pt)
#only("3-")[Where:]
#v(10pt)
#only("4-")[- $v_0$ is the initial velocity]
#v(10pt)
#only("5-")[- $a$ is the acceleration]
#only("1")[
#voiceover("Now, the velocity function is given by v sub f equals v sub 0 plus a times t.")
]
#only("2")[
#voiceover("This equation relates the final velocity to the initial velocity, acceleration, and time.")
]
#only("3")[
#voiceover("In this equation...")
]
#only("4")[
#voiceover("v sub 0 represents the initial velocity...")
]
#only("5")[
#voiceover("and a represents the acceleration.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Finding Initial Velocity]
#v(40pt)
#only("1-")[To find the initial velocity ($v_0$), we can:]
#v(20pt)
#only("2-")[- Use the inverse of the velocity function]
#v(10pt)
#only("3-")[$ v_0 = v_f - at $]
#only("1")[
#voiceover("Now, our goal is to find the initial velocity, v sub 0, given that we know the final velocity and time.")
]
#only("2")[
#voiceover("To do this, we can use the inverse of the velocity function.")
]
#only("3")[
#voiceover("The inverse function allows us to solve for v sub 0, giving us the equation v sub 0 equals v sub f minus a times t.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Parameters
v0 = 10  # Initial velocity
a = 2    # Acceleration
t = np.linspace(0, 5, 100)  # Time

# Velocity function
vf = v0 + a * t

# Plot
plt.figure(figsize=(8, 6))
plt.plot(t, vf, 'b-', linewidth=2, label='Velocity Function')
plt.xlabel('Time (s)', fontsize=14)
plt.ylabel('Velocity (m/s)', fontsize=14)
plt.title('Velocity vs Time', fontsize=16)
plt.grid(True)
plt.legend(fontsize=12)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the velocity function. The blue line shows how the velocity changes over time, starting from the initial velocity v sub 0 and increasing with a constant acceleration a.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Inverse functions are useful in physics 🔬]
#v(20pt)
#only("2-")[- They allow us to find initial conditions 🏁]
#v(20pt)
#only("3-")[- Given the final state and the function 📈]
#only("1")[
#voiceover("In summary, inverse functions are incredibly useful in physics and other sciences.")
]
#only("2")[
#voiceover("They allow us to find initial conditions or starting points...")
]
#only("3")[
#voiceover("Given the final state of a system and the function that describes its behavior over time.")
]
]