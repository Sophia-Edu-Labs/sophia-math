#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions in Real Life 🌍]
#v(40pt)
#only("1-")[- Used in various fields 🔬⚙️]
#v(20pt)
#only("2-")[- Physics, engineering, economics, etc. 🚀🏗️💰]
#only("1")[
#voiceover("Power functions, which have the form $f(x) = x^n$ where $n$ is a constant, are used in various real-world applications across many different fields.")
]
#only("2")[
#voiceover("They are particularly prevalent in physics, engineering, and economics, among others.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Physics 🔭]
#v(40pt)
#only("1-")[- Inverse square laws ↔️]
#v(20pt)
#only("2-")[- Gravity: $F = G m_1 m_2 / r^2$ 🪐]
#v(20pt)
#only("3-")[- Electrostatics: $F = k q_1 q_2 / r^2$ ⚡]
#only("1")[
#voiceover("In physics, power functions often appear in the form of inverse square laws.")
]
#only("2")[
#voiceover("For example, Newton's law of universal gravitation states that the gravitational force between two objects is proportional to the product of their masses and inversely proportional to the square of the distance between them.")
]
#only("3")[
#voiceover("Similarly, Coulomb's law describes the electrostatic force between two charged particles as being proportional to the product of their charges and inversely proportional to the square of the distance between them.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Engineering 🏗️]
#v(40pt)
#only("1-")[- Fluid dynamics 🌊]
#v(20pt)
#only("2-")[- Drag force: $F_D = (1/2) ρ v^2 C_D A$ 🪂]
#v(20pt)
#only("3-")[- Pressure drop: $Δp = f (L/D) (ρ v^2 / 2)$ 🚰]
#only("1")[
#voiceover("In engineering, power functions are used in various contexts, such as fluid dynamics.")
]
#only("2")[
#voiceover("The drag force experienced by an object moving through a fluid is proportional to the square of its velocity, as described by the drag equation.")
]
#only("3")[
#voiceover("Similarly, the pressure drop in a pipe due to fluid friction is proportional to the square of the fluid's velocity, as given by the Darcy-Weisbach equation.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Economics 💰]
#v(40pt)
#only("1-")[- Cobb-Douglas production function 🏭]
#v(20pt)
#only("2-")[- $Y = A L^α K^β$ 📈]
#v(20pt)
#only("3-")[- Models relationship between inputs and output 🔧➡️🎁]
#only("1")[
#voiceover("In economics, power functions are used in various models, such as the Cobb-Douglas production function.")
]
#only("2")[
#voiceover("This function models the relationship between the inputs, typically labor and capital, and the output of a production process.")
]
#only("3")[
#voiceover("The exponents $α$ and $β$ represent the output elasticities of labor and capital, respectively, and determine the degree of the power function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Power functions are widely used 🌐]
#v(20pt)
#only("2-")[- Appear in physics, engineering, economics 🔬🏗️💰]
#v(20pt)
#only("3-")[- Describe relationships between variables 🔗]
#only("1")[
#voiceover("In summary, power functions are widely used across various fields to model and describe real-world phenomena.")
]
#only("2")[
#voiceover("They appear in physics, engineering, economics, and many other areas.")
]
#only("3")[
#voiceover("Power functions are particularly useful for describing relationships between variables where one quantity varies as a power of another.")
]
]