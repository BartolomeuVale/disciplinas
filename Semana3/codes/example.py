from turtle import *

def star(length, sides, multiple, decrement):
    while length > 0:
        forward(length)
        right(multiple * 360/sides)
        length = length - decrement

speed("fast")
penup()
goto(-200, 200)
pendown()
star(400,3,1.01, 10)
done()
