#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[Which of the following is an application of power functions?]
#v(40pt)
#only("-1")[a) Calculating the area of a square]
#only("2-")[#text(fill:green)[a) Calculating the area of a square]]
#v(10pt)
#only("-2")[b) Modeling population growth]
#only("3-")[#text(fill:green)[b) Modeling population growth]]
#v(10pt)
#only("-3")[c) Determining the speed of a car]
#only("4-")[#text(fill:green)[c) Determining the speed of a car]]
#v(10pt)
#only("-4")[d) All of the above]
#only("5-")[#text(fill:green)[d) All of the above]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let me show you the correct solution.")]
#only("2")[#voiceover("Power functions can indeed be used to calculate the area of a square. If the side length is $s$, the area is given by the power function $A(s) = s^2$.")]
#only("3")[#voiceover("Power functions are also used in population modeling. If a population grows exponentially, it can be modeled by a function of the form $P(t) = P_0 e^(kt)$, where $P_0$ is the initial population, $k$ is the growth rate, and $t$ is time.")]
#only("4")[#voiceover("Even in determining the speed of a car, power functions play a role. The kinetic energy of a moving car is given by $E_k = (1/2) mv^2$, where $m$ is the mass and $v$ is the velocity. The velocity is related to the kinetic energy by a power function.")]
#only("5")[#voiceover("So in fact, all of these are applications of power functions. Well done on identifying that!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Area of a Square]
#v(40pt)
#only("1-")[
- Side length: $s$
- Area: $A(s) = s^2$
]
#v(40pt)
#only("2-")[Example: $s = 5$]
#v(20pt)
#only("3-")[$A(5) = 5^2 = 25$]

#only("1")[#voiceover("Let's look at the area of a square in more detail. If the side length is $s$, then the area is given by the power function $A of s equals s squared$.")]
#only("2")[#voiceover("For example, if the side length is 5,")]
#only("3")[#voiceover("then the area is $A of 5$, which equals $5 squared$, or 25 square units.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Population Growth]
#v(40pt)
#only("1-")[
- Initial population: $P_0$
- Growth rate: $k$
- Time: $t$
- Population: $P(t) = P_0 e^(kt)$
]
#v(40pt)
#only("2-")[Example: $P_0 = 100$, $k = 0.1$, $t = 5$]
#v(20pt)
#only("3-")[$P(5) = 100 e^(0.1 multiply 5) ≈ 165$]

#only("1")[#voiceover("In population growth, if $P_0$ is the initial population, $k$ is the growth rate, and $t$ is time, then the population at time $t$ is given by $P of t equals P_0 times e to the power of k t$.")]
#only("2")[#voiceover("For instance, if the initial population is 100, the growth rate is 0.1, and we want to know the population after 5 time units,")]
#only("3")[#voiceover("we calculate $P of 5$, which equals $100 times e to the power of 0.1 times 5$, approximately 165.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Kinetic Energy]
#v(40pt)
#only("1-")[
- Mass: $m$
- Velocity: $v$
- Kinetic Energy: $E_k = (1/2) mv^2$
]
#v(40pt)
#only("2-")[Example: $m = 1000 "kg"$, $E_k = 250000 "J"$]
#v(20pt)
#only("3-")[$v = root(2, (2 multiply 250000)/1000) ≈ 22.4 "m/s"$]

#only("1")[#voiceover("In physics, the kinetic energy of a moving object is given by $E_k equals one half times mass times velocity squared$. Here, the velocity is related to the kinetic energy by a power function.")]
#only("2")[#voiceover("For example, if a car with a mass of 1000 kilograms has a kinetic energy of 250000 joules,")]
#only("3")[#voiceover("we can find its velocity by solving the equation $250000 equals one half times 1000 times v squared$ for $v$. This gives $v equals the square root of 2 times 250000 divided by 1000$, approximately 22.4 meters per second.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Power functions 📈 have many applications:]
#v(20pt)
#only("2-")[- Calculating areas 🟥]
#v(10pt)
#only("3-")[- Modeling populations 👥📈]
#v(10pt)
#only("4-")[- Determining speeds 🚗💨]
#v(10pt)
#only("5-")[- And many more! 🌟]

#only("1")[#voiceover("In summary, power functions have a wide range of applications.")]
#only("2")[#voiceover("They can be used to calculate areas,")]
#only("3")[#voiceover("model population growth,")]
#only("4")[#voiceover("determine the speed of moving objects,")]
#only("5")[#voiceover("and much more. Understanding power functions is crucial in many fields of mathematics and science.")]
]