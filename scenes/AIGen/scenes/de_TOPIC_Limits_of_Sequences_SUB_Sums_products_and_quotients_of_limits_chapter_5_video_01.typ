#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Reale Anwendungen von Grenzwerten 🌍]
#v(40pt)
#only("1-")[- Zinseszinsen 💰]
#v(20pt)
#only("2-")[- Bevölkerungswachstum 👥]
#only("1")[
#voiceover("Das Verständnis von Grenzwerten von Folgen ist in verschiedenen realen Anwendungen nützlich, wie zum Beispiel bei der Berechnung von Zinseszinsen und dem Bevölkerungswachstum.")
]
#only("2")[
#voiceover("Betrachten wir zum Beispiel, wie Grenzwerte verwendet werden können, um das Bevölkerungswachstum im Laufe der Zeit zu modellieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstumsmodell 📈]
#v(40pt)
#only("1-")[- Anfangsbevölkerung: $P_0$]
#v(20pt)
#only("2-")[- Wachstumsrate pro Periode: $r$]
#v(20pt)
#only("3-")[- Bevölkerung nach $n$ Perioden: $P_n = P_0 (1 + r)^n$]
#only("1")[
#voiceover("Angenommen, wir haben eine Anfangsbevölkerung P_0.")
]
#only("2")[
#voiceover("Die Bevölkerung wächst mit einer Rate r pro Periode, zum Beispiel pro Jahr.")
]
#only("3")[
#voiceover("Die Bevölkerung nach n Perioden, bezeichnet als P_n, kann mit der Formel P_n = P_0 (1 + r)^n berechnet werden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert des Bevölkerungswachstums ♾]
#v(40pt)
#only("1-")[- Wenn $n$ gegen $infinity$ geht: $lim_(n -> infinity) P_n = ?$]
#v(20pt)
#only("2-")[- Hängt vom Wert von $r$ ab:]
#v(20pt)
#only("3-")[  - Wenn $|1 + r| < 1$ ist, sinkt die Bevölkerung auf 0]
#v(20pt)
#only("4-")[  - Wenn $|1 + r| > 1$ ist, wächst die Bevölkerung unbegrenzt]
#only("1")[
#voiceover("Betrachten wir nun, was mit der Bevölkerung passiert, wenn die Anzahl der Perioden n gegen unendlich geht.")
]
#only("2")[
#voiceover("Der Grenzwert des Bevölkerungswachstums hängt vom Wert der Wachstumsrate r ab.")
]
#only("3")[
#voiceover("Wenn der absolute Wert von 1 plus r kleiner als 1 ist, wird die Bevölkerung schließlich auf 0 sinken, wenn n gegen unendlich geht.")
]
#only("4")[
#voiceover("Andererseits, wenn der absolute Wert von 1 plus r größer als 1 ist, wird die Bevölkerung unbegrenzt wachsen, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Parameters
P0 = 100  # Initial population
r_values = [-0.02, 0.03]  # Growth rates

# Generate n values
n = np.arange(0, 100)

# Create the plot
plt.figure(figsize=(8, 6))

for r in r_values:
    P = P0 * (1 + r)**n
    plt.plot(n, P, label=f'r = {r}')

plt.xlabel('Number of Periods (n)')
plt.ylabel('Population (P_n)')
plt.title('Population Growth over Time')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt das Bevölkerungswachstum im Laufe der Zeit für zwei verschiedene Wachstumsraten. Die blaue Linie repräsentiert eine negative Wachstumsrate, die zu einer abnehmenden Bevölkerung führt, die gegen 0 geht. Die orange Linie repräsentiert eine positive Wachstumsrate, die zu einer exponentiell wachsenden Bevölkerung führt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎓]
#v(40pt)
#only("1-")[- Grenzwerte von Folgen haben reale Anwendungen]
#v(20pt)
#only("2-")[- Bevölkerungswachstum kann mit Grenzwerten modelliert werden]
#v(20pt)
#only("3-")[- Der Grenzwert des Bevölkerungswachstums hängt von der Wachstumsrate ab]
#only("1")[
#voiceover("Zusammenfassend haben Grenzwerte von Folgen wichtige reale Anwendungen, wie zum Beispiel die Modellierung des Bevölkerungswachstums.")
]
#only("2")[
#voiceover("Wir können eine mathematische Formel mit Grenzwerten verwenden, um die Bevölkerung nach einer großen Anzahl von Perioden zu berechnen.")
]
#only("3")[
#voiceover("Das langfristige Verhalten der Bevölkerung hängt von der Wachstumsrate ab, was entweder zu einer abnehmenden Bevölkerung führt, die gegen 0 geht, oder zu einer exponentiell wachsenden Bevölkerung.")
]
]