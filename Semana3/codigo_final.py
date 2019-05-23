import math
'''
ALUNA: NATÁLIA FREITAS ARAÚJO
MATRICULA: 201533840018
ATIVIDADE 2 - TRANSLAÇÃO 2D
Triângulo de Sierpinski
'''
import numpy as np
from matplotlib import pyplot as plt

def half(m):
    h = np.matrix([[0.5, 0], [0, 0.5]])
    return m * h

def translation(m, x, y=0):
    for i in range(len(m)):
        m[i,0] += x
        m[i,1] += y
    return m

def TIE(M, i, x=0, y=0):
    M = half(M)
    m0, m1, m2 = np.matrix(translation(M, x, y)), np.matrix(M), np.matrix(M)
    plt.plot(m0[:,0], m0[:,1])
    translation(m1, 2*(1/i))
    plt.plot(m1[:,0], m1[:,1])
    m2 = translation(m2, 1*(1/i), 1*(1/i))
    plt.plot(m2[:,0], m2[:,1])
    return m0, m1, m2

def TID(M, i, j, x=0, y=0):
    M = half(M)
    m0, m1, m2 = np.matrix(translation(M, x+(1/j), y)), np.matrix(M), np.matrix(M)
    plt.plot(m0[:,0], m0[:,1])
    translation(m1, 2*(1/i))
    plt.plot(m1[:,0], m1[:,1])
    m2 = translation(m2, 1*(1/i), 1*(1/i))
    plt.plot(m2[:,0], m2[:,1])
    return m0, m1, m2

def TS(M, i, x=0, y=0):
    M = half(M)
    m0, m1, m2 = np.matrix(translation(M, x+(1/i), y+(1/i))), np.matrix(M), np.matrix(M)
    plt.plot(m0[:,0], m0[:,1])
    translation(m1, 2*(1/i))
    plt.plot(m1[:,0], m1[:,1])
    m2 = translation(m2, 1*(1/i), 1*(1/i))
    plt.plot(m2[:,0], m2[:,1])
    return m0, m1, m2
    
# pontos do triangulo inicial
M = np.matrix([[0,0], [2,2], [4,0], [0,0]])
plt.plot(M[:,0], M[:,1])

# Triangulo 1
m0, m1, m2 = TIE(M, 1)

# Triangulo 2
e0, e1, e2 = TIE(m0, 2)
d0, d1, d2 = TID(m1, 2, 1)
s0, s1, s2 = TS(m2, 2)

# Triangulo 3
ea0, ea1, ea2 = TIE(e0, 4)
da0, da1, da2 = TID(e1, 4, 2)
sa0, sa1, sa2 = TS(e2, 4)

eb0, eb1, eb2 = TIE(d0, 4, 1)
db0, db1, db2 = TID(d1, 4, 2, 1)
sb0, sb1, sb2 = TS(d2, 4, 1)

ec0, ec1, ec2 = TIE(s0, 4, 0.5, 0.5)
dc0, dc1, dc2 = TID(s1, 4, 2, 0.5, 0.5)
sc0, sc1, sc2 = TS(s2, 4, 0.5, 0.5)

# Triangulo 4

TIE(ea0, 8)
TID(ea1, 8, 4)
TS(ea2, 8)

TIE(da0, 8, 0.5)
TID(da1, 8, 4, 0.5)
TS(da2, 8, 0.5)

TIE(sa0, 8, 0.25, 0.25)
TID(sa1, 8, 4, 0.25, 0.25)
TS(sa2, 8, 0.25, 0.25)

TIE(eb0, 8, 2)
TID(eb1, 8, 4, 2)
TS(eb2, 8, 2)

TIE(db0, 8, 0.5)
TID(db1, 8, 4, 0.5)
TS(db2, 8, 0.5)

TIE(sb0, 8, 1.25, 0.25)
TID(sb1, 8, 4, 1.25, 0.25)
TS(sb2, 8, 1.25, 0.25)

TIE(ec0, 8, 0.5, 0.5)
TID(ec1, 8, 4, 0.5, 0.5)
TS(ec2, 8, 0.5, 0.5)

TIE(dc0, 8, 1, 0.5)
TID(dc1, 8, 4, 1, 0.5)
TS(dc2, 8, 1, 0.5)

TIE(sc0, 8, 0.75, 0.75)
TID(sc1, 8, 4, 0.75, 0.75)
TS(sc2, 8, 0.75, 0.75)

plt.show()
#plt.savefig('tri2.png')
#plt.savefig('tri2.pdf')
