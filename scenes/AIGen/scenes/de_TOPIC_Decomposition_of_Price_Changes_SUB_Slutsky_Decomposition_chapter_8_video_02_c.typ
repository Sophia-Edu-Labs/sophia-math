#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Zerlegung]
#v(40pt)
#only("1-")[Der Hauptunterschied zwischen der Slutsky- und der Hicks-Zerlegung besteht darin, dass die Slutsky-Zerlegung \_\_\_\_\_ konstant hält, während die Hicks-Zerlegung \_\_\_\_\_ konstant hält.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Nutzen, Realeinkommen]#only("2-")[#text(fill:red)[a) Nutzen, Realeinkommen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Realeinkommen, Nutzen]#only("3-")[#text(fill:green)[b) Realeinkommen, Nutzen]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Nominaleinkommen, Realeinkommen]#only("4-")[#text(fill:red)[c) Nominaleinkommen, Realeinkommen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Realeinkommen, Nominaleinkommen]#only("5-")[#text(fill:red)[d) Realeinkommen, Nominaleinkommen]]
#only("1")[#voiceover("Leider nicht ganz richtig, aber hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Option a) ist falsch. Die Slutsky-Zerlegung hält nicht den Nutzen konstant, sondern das Realeinkommen.")]
#only("3")[#voiceover("Option b) ist die richtige Antwort. Die Slutsky-Zerlegung hält tatsächlich das Realeinkommen konstant, während die Hicks-Zerlegung den Nutzen konstant hält.")]
#only("4")[#voiceover("Option c) ist falsch. Weder die Slutsky- noch die Hicks-Zerlegung halten das Nominaleinkommen konstant.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Die Hicks-Zerlegung hält nicht das Nominaleinkommen konstant, sondern den Nutzen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[🔑 Hauptunterschied:]
#v(20pt)
#only("2-")[- Slutsky-Zerlegung: Hält #text(weight: "bold")[Realeinkommen] konstant 💰]
#only("3-")[- Hicks-Zerlegung: Hält #text(weight: "bold")[Nutzen] konstant 😊]
#v(40pt)
#only("4-")[🤔 Warum es wichtig ist:]
#v(20pt)
#only("5-")[- Unterschiedliche Perspektiven auf das Verbraucherverhalten]
#only("6-")[- Slutsky: Wie sich der Konsum mit den Preisen ändert, bei gleichbleibender Kaufkraft]
#only("7-")[- Hicks: Wie sich der Konsum mit den Preisen ändert, bei gleichbleibendem Zufriedenheitsniveau]

#only("1")[#voiceover("Lass uns den Hauptunterschied zwischen der Slutsky- und der Hicks-Zerlegung zusammenfassen.")]
#only("2")[#voiceover("Die Slutsky-Zerlegung hält das Realeinkommen konstant. Das bedeutet, sie betrachtet, wie sich der Konsum ändert, wenn sich die Preise ändern, aber die Kaufkraft des Verbrauchers gleich bleibt.")]
#only("3")[#voiceover("Die Hicks-Zerlegung hingegen hält den Nutzen konstant. Sie untersucht, wie sich der Konsum mit den Preisen ändert, aber das Zufriedenheitsniveau des Verbrauchers bleibt gleich.")]
#only("4")[#voiceover("Warum ist dieser Unterschied wichtig?")]
#only("5")[#voiceover("Weil sie unterschiedliche Perspektiven auf das Verbraucherverhalten bieten.")]
#only("6")[#voiceover("Die Slutsky-Zerlegung zeigt uns, wie sich die Entscheidungen eines Verbrauchers mit den Preisen ändern, wenn sein Realeinkommen, oder seine Kaufkraft, konstant bleibt.")]
#only("7")[#voiceover("Die Hicks-Zerlegung hingegen zeigt, wie sich die Entscheidungen eines Verbrauchers mit den Preisen ändern, wenn er so kompensiert wird, dass sein Zufriedenheitsniveau, oder Nutzen, konstant bleibt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - x
y2 = 12.5 - 1.25*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Define the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 12.5 / x

# Plot the indifference curves
ax.plot(x, y1, color='green', label='Original Indifference Curve')
ax.plot(x, y2, color='purple', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky vs Hicks Decomposition')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Blaue Linie: Ursprüngliche Budgetlinie]
#only("2-")[- Rote Linie: Neue Budgetlinie (Preisänderung)]
#only("3-")[- Grüne Kurve: Ursprüngliche Indifferenzkurve]
#only("4-")[- Lila Kurve: Neue Indifferenzkurve]
#only("5-")[- Slutsky: Bewegung entlang der ursprünglichen Indifferenzkurve (grün) zur neuen Budgetlinie (rot)]
#only("6-")[- Hicks: Verschiebung zur neuen Indifferenzkurve (lila) bei neuen Preisen (rote Budgetlinie)]

#only("1")[#voiceover("Dieses Diagramm veranschaulicht den Unterschied zwischen der Slutsky- und der Hicks-Zerlegung. Die blaue Linie stellt die ursprüngliche Budgetbeschränkung des Verbrauchers dar.")]
#only("2")[#voiceover("Die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung.")]
#only("3")[#voiceover("Die grüne Kurve ist die ursprüngliche Indifferenzkurve des Verbrauchers, die ein konstantes Nutzenniveau darstellt.")]
#only("4")[#voiceover("Die lila Kurve ist eine neue Indifferenzkurve, die ebenfalls ein konstantes Nutzenniveau darstellt, jedoch auf einem anderen Niveau.")]
#only("5")[#voiceover("Bei der Slutsky-Zerlegung betrachten wir die Bewegung entlang der ursprünglichen Indifferenzkurve zur neuen Budgetlinie. Dies isoliert den Substitutionseffekt, wobei das Realeinkommen konstant bleibt.")]
#only("6")[#voiceover("Bei der Hicks-Zerlegung betrachten wir die Verschiebung zu einer neuen Indifferenzkurve bei den neuen Preisen. Dies isoliert den Substitutionseffekt, wobei der Nutzen konstant bleibt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Slutsky-Zerlegung hält das Realeinkommen konstant 💰]
#only("2-")[- Die Hicks-Zerlegung hält den Nutzen konstant 😊]
#only("3-")[- Sie bieten unterschiedliche Perspektiven auf das Verbraucherverhalten]
#only("4-")[- Slutsky: Substitutionseffekt bei konstanter Kaufkraft]
#only("5-")[- Hicks: Substitutionseffekt bei konstantem Zufriedenheitsniveau]
#only("6-")[- Beide sind wertvolle Werkzeuge zum Verständnis der Verbraucherwahl]

#only("1")[#voiceover("Zusammenfassend hält die Slutsky-Zerlegung das Realeinkommen konstant, wenn die Auswirkungen von Preisänderungen analysiert werden.")]
#only("2")[#voiceover("Die Hicks-Zerlegung hingegen hält den Nutzen konstant.")]
#only("3")[#voiceover("Diese beiden Ansätze bieten unterschiedliche Einblicke in das Verbraucherverhalten.")]
#only("4")[#voiceover("Die Slutsky-Zerlegung isoliert den Substitutionseffekt, indem die Kaufkraft des Verbrauchers gleich bleibt.")]
#only("5")[#voiceover("Die Hicks-Zerlegung isoliert den Substitutionseffekt, indem das Zufriedenheitsniveau des Verbrauchers gleich bleibt.")]
#only("6")[#voiceover("Sowohl die Slutsky- als auch die Hicks-Zerlegung sind wertvolle Werkzeuge für Ökonomen, um zu verstehen und vorherzusagen, wie Verbraucher auf Preisänderungen reagieren.")]
]