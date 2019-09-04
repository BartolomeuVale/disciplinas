import turtle

window = turtle.Screen()
euler = turtle.Turtle()  # A good mathy name for our turtle
euler.shape("turtle")

current = 0   # Here's how we know where we are
seen = set()  # Here's where we'll keep track of where we've been

# Step increases by 1 each time
for step_size in range(1, 100):
    
    backwards = current - step_size
    
    # Step backwards if its positive and we've never been there before
    if backwards > 0 and backwards not in seen:
        euler.backward(step_size)
        current = backwards
        seen.add(current)
        
    # Otherwise, go forwards
    else:
        euler.forward(step_size)
        current += step_size
        seen.add(current)
        
turtle.done()
