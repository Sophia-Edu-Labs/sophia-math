#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift System 🏗]
#v(40pt)
#only("1-")[- Uses fluid pressure to lift heavy objects 🏋]
#v(20pt)
#only("2-")[- Relationships: force, area, pressure 🔗]
#v(20pt)
#only("3-")[- Key equations: $p = F / A$, $F = p dot A$ 📏]

#only("1")[
#voiceover("A hydraulic lift system uses fluid pressure to lift heavy objects. It's a powerful tool in many industrial and construction applications.")
]

#only("2")[
#voiceover("The system works based on the relationships between force, area, and pressure. Understanding these relationships is key to designing and operating a hydraulic lift.")
]

#only("3")[
#voiceover("The key equations are pressure equals force divided by area, and force equals pressure times area. These equations allow us to calculate the necessary pressure or force for a given situation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation 🧮]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 

# Parameters 
F = 58860  # Force (N) 
A_press = 400  # Area of press piston (cm²) 
A_pump = 5  # Area of pump piston (cm²) 
h_lift = 200  # Lift height (cm) 
s_pump = 50  # Pump stroke (cm) 

# Calculate pressure 
p = F / (A_press / 10000)  # Convert cm² to m² 

# Calculate pump force 
F_pump = p * (A_pump / 10000)  # Convert cm² to m² 

# Calculate number of pump strokes 
n = (A_press * h_lift) / (A_pump * s_pump) 

# Plotting 
labels = ['Pressure (MPa)', 'Pump Force (N)', 'Pump Strokes'] 
values = [p / 1e6, F_pump, n]  # Convert Pa to MPa 

fig, ax = plt.subplots(figsize=(6, 6)) 
ax.bar(labels, values) 
ax.set_ylabel('Value') 
ax.grid(True) 
plt.show() 
```, 
width: 360pt), 
) 
] 
]

#only("1")[ 
#voiceover("Let's look at an example calculation. Suppose we need to lift a 6000 kg motor using a hydraulic lift with a press piston area of 400 square centimeters.") 
]

#v(20pt) 
#only("2-")[- Pressure required: $p = F / A = 1.47$ MPa] 
#v(20pt) 
#only("3-")[- Pump force (if pump piston area is 5 cm²): $F = p dot A = 735.75$ N] 
#v(20pt) 
#only("4-")[- Number of pump strokes (if lift height is 2 m and pump stroke is 50 cm): $n = 320$]

#only("2")[ 
#voiceover("First, we calculate the pressure required. Using the equation pressure equals force divided by area, we get a pressure of 1.47 megapascals.") 
]

#only("3")[ 
#voiceover("Next, if the pump piston has an area of 5 square centimeters, we can calculate the necessary pump force using the equation force equals pressure times area. This gives us a pump force of about 736 newtons.") 
]

#only("4")[ 
#voiceover("Finally, we can determine the number of pump strokes needed if the lift height is 2 meters and each pump stroke is 50 centimeters. Using the relationship between the volumes displaced by the press and pump pistons, we find that 320 pump strokes are required.") 
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Hydraulic lifts: powerful tool using fluid pressure 💪]
#v(20pt)
#only("2-")[- Understand force, area, pressure relationships 📊]
#v(20pt)
#only("3-")[- Apply equations to design & operate system 🔧]

#only("1")[
#voiceover("In summary, hydraulic lift systems are a powerful tool that use fluid pressure to lift heavy loads.")
]

#only("2")[
#voiceover("Understanding the relationships between force, area, and pressure is crucial for working with these systems.")
]

#only("3")[
#voiceover("By applying the key equations, we can design and operate hydraulic lifts effectively. This allows us to tackle heavy lifting tasks in various industrial and construction settings.")
]
]