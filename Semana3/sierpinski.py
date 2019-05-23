from math import sin, cos, pi,sqrt 
import matplotlib.pyplot as plt 
import matplotlib 

def triangulo(n): 
    
    x1 = 0 
    y1 = 0 
     
    x2 = cos(pi / 3) 
    y2 = sin(pi / 3) 
     
    x3 = cos(0) 
    y3 = sin(0) 
     
    draw(x1, y1, x2, y2, x3, y3, n) 
   
    return 


def draw(xi, yi, xm, ym, xf, yf, n): 
    
    if n == 0: 
        
        plt.plot([xi, xm, xf, xi], [yi, ym, yf, yi], color='black') 
        
    elif n > 0: 
 
        pmedio1x = (xi + xm)/2 
        pmedio1y = (yi + ym)/2 
 
        pmedio2x = (xm + xf)/2 
        pmedio2y = (ym + yf)/2 
 
        pmedio3x = (xf + xi)/2 
        pmedio3y = (yf + yi)/2 
 
        draw(xi, yi, pmedio1x, pmedio1y, pmedio3x, pmedio3y, n-1)       
        draw(xm, ym, pmedio2x, pmedio2y, pmedio1x, pmedio1y, n-1) 
        draw(xf, yf, pmedio3x, pmedio3y, pmedio2x, pmedio2y, n-1) 
        
        return 
    
    
triangulo(5)  
plt.show() 
 
