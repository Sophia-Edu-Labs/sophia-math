#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications of Continuity]
#v(40pt)
Which of the following is a real-world application of continuity?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[d) All of the above]#only("2-")[#text(fill:green)[d) All of the above]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) Smooth transitions in engineering]#only("3-")[#text(fill:red)[a) Smooth transitions in engineering]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[b) Predicting physical phenomena]#only("4-")[#text(fill:red)[b) Predicting physical phenomena]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[c) Ensuring stability in systems]#only("5-")[#text(fill:red)[c) Ensuring stability in systems]]

#only("1")[#voiceover("Not quite! Let's take a look at the correct solution.")]
#only("2")[#voiceover("Indeed, all of the mentioned options are real-world applications of continuity.")]
#only("3")[#voiceover("Smooth transitions in engineering rely on continuity. For example, in the design of airplane wings or car bodies, sudden changes could lead to structural weaknesses or aerodynamic problems.")]
#only("4")[#voiceover("Predicting physical phenomena also relies on continuity. Many physical laws and equations assume continuous behavior. Discontinuities could indicate a breakdown of the model.")]
#only("5")[#voiceover("Ensuring stability in systems is another application. In control systems, discontinuities can lead to instability and erratic behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Continuity Matters]
#v(40pt)
#only("1-")[🌉 Engineering:]
#v(10pt)
#only("2-")[- Smooth transitions ensure structural integrity and proper function.]
#v(40pt)
#only("3-")[🌍 Physics:]
#v(10pt)
#only("4-")[- Continuous models predict behavior accurately.]
#v(40pt)
#only("5-")[🎚 Control Systems:]
#v(10pt) 
#only("6-")[- Continuity ensures stability and predictability.]

#only("1")[#voiceover("Let's dive a bit deeper into why continuity is so important in these areas.")]
#only("2")[#voiceover("In engineering, continuity ensures that there are no sudden changes or breaks in a design. This is crucial for the structural integrity and proper functioning of many systems, from bridges to machines.")]
#only("3")[#voiceover("In physics, many fundamental laws and equations assume that quantities behave in a continuous manner.")]
#only("4")[#voiceover("Continuity allows these models to accurately predict and describe physical phenomena. Discontinuities could indicate a breakdown of the model or some interesting physics happening.")]
#only("5")[#voiceover("In control systems, which are used in everything from thermostats to autopilots, continuity is key for stability.")]
#only("6")[#voiceover("If a control system has discontinuities, it can lead to erratic, unpredictable behavior. Continuity ensures that the system behaves in a stable and predictable manner.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Continuity]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
y_continuous = np.sin(np.pi*x)
y_discontinuous = np.sin(np.pi*x) * (x < 0)

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

ax1.plot(x, y_continuous)
ax1.set_title('Continuous Function')
ax1.grid(True)

ax2.plot(x, y_discontinuous)
ax2.set_title('Discontinuous Function')
ax2.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual comparison:]
#v(20pt)
#only("2-")[- The left plot shows a #text(weight: "bold")[continuous function]. It's smooth and unbroken.]
#only("3-")[- The right plot shows a #text(weight: "bold")[discontinuous function]. It has a sudden jump.]

#only("1")[#voiceover("To further illustrate the concept, let's look at a visual comparison of a continuous and a discontinuous function.")]
#only("2")[#voiceover("On the left, we have a plot of a continuous function. Notice how the curve is smooth and unbroken. There are no sudden jumps or gaps.")]
#only("3")[#voiceover("In contrast, the plot on the right shows a discontinuous function. There's a sudden jump where the function abruptly changes value. This kind of discontinuity could cause problems in many real-world applications.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Continuity has many real-world applications 🌍]
#v(20pt)
#only("2-")[- It's crucial in engineering, physics, and control systems 🏗️🔬🎛️]
#v(20pt)
#only("3-")[- Continuous functions are smooth and predictable 📈]
#v(20pt)
#only("4-")[- Discontinuities can lead to problems and instabilities ⚠️]

#only("1")[#voiceover("To recap, continuity has numerous real-world applications.")]
#only("2")[#voiceover("It plays a vital role in fields like engineering, physics, and control systems.")]
#only("3")[#voiceover("Continuous functions behave in a smooth and predictable manner, which is often necessary for systems to function properly.")]
#only("4")[#voiceover("On the other hand, discontinuities can lead to various problems and instabilities. So understanding and ensuring continuity is crucial in many areas of science and technology.")]
]