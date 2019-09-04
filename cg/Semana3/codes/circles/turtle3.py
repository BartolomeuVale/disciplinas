import turtle

window = turtle.Screen()
euler = turtle.Turtle()  # A good mathy name for our turtle
euler.shape("turtle")

current = 0   # Here's how we know where we are
seen = set()  # Here's where we'll keep track of where we've been
euler.speed("fastest")
# Step increases by 1 each time
for step_size in range(1, 100):
    
    backwards = current - step_size
    
    # Step backwards if its positive and we've never been there before
    if backwards > 0 and backwards not in seen:
        euler.setheading(90) # 90 degrees is pointing straight up
        euler.circle(step_size/2, 180)  # 180 degrees means "draw a semicircle"
        current = backwards
        seen.add(current)
        
    # Otherwise, go forwards
    else:
        euler.setheading(270)  # 270 degrees is straight down
        euler.circle(step_size/2, 180)
        current += step_size
        seen.add(current)
        
turtle.done()
