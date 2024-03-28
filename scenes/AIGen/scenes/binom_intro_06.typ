#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("1")[
#voiceover("Wenn wir ein Bernoulli-Zufallsexperiment oft wiederholen, dann erhalten wir eine Binomialverteilte Zufallsvariable.")
]
#only("2-")[
#box()[
#text(weight:"bold")[Definition:]
Eine Zufallsvariable $X$ ist #text(blue)[binomialverteilt] mit Parametern $n$ und $p$, wenn sie die #text(blue)[Anzahl der Erfolge] in einer #text(blue)[Serie] von $n$ unabhängigen Versuchen zählt, die jeweils mit #text(blue)[Wahrscheinlichkeit] $p$ erfolgreich sind.
]
]
#only("2")[

#voiceover("Eine Zufallsvariable X heißt binomialverteilt mit Parametern n und p, wenn sie die Anzahl der Erfolge in einer Serie von n unabhängigen Versuchen zählt, die jeweils mit Wahrscheinlichkeit p erfolgreich sind. Also zum Beispiel wie oft man Kopf erhält, wenn man zehn mal eine Münze würfelt.")
]
#only("3-")[

#text(weight:"bold")[Notation:] $X ~ B(n,p)$, wobei
]
#only("4-")[

- $n$: #text(blue)[Anzahl] der Versuche
]
#only("5-")[
- $p$: #text(blue)[Erfolgswahrscheinlichkeit] bei jedem Versuch
]
#only("3")[
#voiceover("Man schreibt dann X ist binomialverteilt mit Parametern n und p,")
]
#only("4")[
#voiceover("wobei n die Anzahl der Versuche")
]
#only("5")[
#voiceover("und p die Erfolgswahrscheinlichkeit bei jedem einzelnen Versuch ist.")
]
#only("6")[
#voiceover("Die Wahrscheinlichkeit, in n Versuchen genau k Erfolge zu erzielen, berechnet man mit der Binomialformel: P von x gleich k gleich n über k mal p hoch k mal 1 minus p hoch n minus k.")
]
#only("6-")[
#v(20pt)
#text(weight:"bold")[Binomialformel:]

$P(X=k) $
$= binom(n,k) dot p^k dot (1-p)^(n-k)$
]
]
