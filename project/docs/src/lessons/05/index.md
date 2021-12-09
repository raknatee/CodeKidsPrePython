# Lesson 5: Robot and Turtle

## Tools
[https://trinket.io/](https://trinket.io/)

## Exercises
PythonExercise.pdf Page 10-11

## Coding Challenge

main.py
```python
from turtle import *

my_turtle = Turtle()
my_turtle.goto(0,0)
my_turtle.goto(50,0)
```
output

![image](./01.png)

***

main.py
```python{4}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")
my_turtle.goto(0,0)
my_turtle.goto(50,0)
```
output

![image](./02.png)

***

main.py
```python{6}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")
my_turtle.goto(0,0)
my_turtle.forward(50)
```
output

![image](./02.png)


## Exercises

<svg class="draw" viewBox="0 0 100 100">
  <polyline points="0,25 50,25 50,75 100,75"
  style="fill:none;stroke:black;stroke-width:3" />
</svg>


```mermaid
flowchart  LR
    start([Start]) --> id1(forward 50) --> id2(right 90 degree) --> id3(forward 50) --> id4(left 90 degree) --> id5(forward 50) --> stop([Stop])

    style start fill: #fcba03,stroke:#000000
    style id1 fill: #fcba03,stroke:#000000
    style id2 fill: #fcba03,stroke:#000000
    style id3 fill: #fcba03,stroke:#000000
    style id4 fill: #fcba03,stroke:#000000
    style id5 fill: #fcba03,stroke:#000000
    style stop fill: #fcba03,stroke:#000000

```

::: details Click here for Solution
main.py
```python
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

my_turtle.forward(50)
my_turtle.right(90)
my_turtle.forward(50)
my_turtle.left(90)
my_turtle.forward(50)
```
:::

<svg class="draw" viewBox="0 0 100 100">
  <polyline points="10,100 10,50 60,50 60,0"
  style="fill:none;stroke:black;stroke-width:3" />
</svg>


```mermaid
flowchart  LR
    start([Start]) --> id1(left 90 degree) --> id2(forward 50) --> id3(right 90 degree) --> id4(forward 50) --> id5(left 90 degree) --> id6(forward 50) --> stop([Stop])

    style start fill: #fcba03,stroke:#000000
    style id1 fill: #fcba03,stroke:#000000
    style id2 fill: #fcba03,stroke:#000000
    style id3 fill: #fcba03,stroke:#000000
    style id4 fill: #fcba03,stroke:#000000
    style id5 fill: #fcba03,stroke:#000000
    style id6 fill: #fcba03,stroke:#000000
    style stop fill: #fcba03,stroke:#000000

```

::: details Click here for Solution
main.py
```python
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

my_turtle.left(90)
my_turtle.forward(50)
my_turtle.right(90)
my_turtle.forward(50)
my_turtle.left(90)
my_turtle.forward(50)
```
:::


<svg class="draw" viewBox="0 0 100 100">
  <polyline points="0,90 50,90 92.5,47.5"
  style="fill:none;stroke:black;stroke-width:3" />
</svg>

```mermaid
flowchart  LR
    start([Start]) --> 
    id1(forward 50) -->
    id2(left 45 degree) -->
    id3(forward 50) -->
    stop([stop])

    style start fill: #fcba03,stroke:#000000
    style id1 fill: #fcba03,stroke:#000000
    style id2 fill: #fcba03,stroke:#000000
    style id3 fill: #fcba03,stroke:#000000
   
    style stop fill: #fcba03,stroke:#000000
```

::: details Click here for Solution
main.py
```python
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")


my_turtle.forward(50)
my_turtle.left(45)
my_turtle.forward(50)
```
:::

## Lesson Learns

### Function
- Basically, **function** is a group of command.

main.py
```python{6-13}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

my_turtle.forward(50)
my_turtle.left(90)
my_turtle.forward(50)
my_turtle.left(90)
my_turtle.forward(50)
my_turtle.left(90)
my_turtle.forward(50)
my_turtle.left(90)
```
- As you can see code line 6-13. They are creating a rectangle. We can make it into one group.
  
output

![image](./03.png)


main.py
```python{6,16}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

def rect():
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)

rect()
```

- Draws more rectangles

main.py
```python{16-20}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

def rect():
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)
    my_turtle.forward(50)
    my_turtle.left(90)

rect()
my_turtle.forward(50)
rect()
my_turtle.forward(50)
rect()
```
output

![image](./04.png)

- Refactor our code

main.py
```python{7-9}
from turtle import *

my_turtle = Turtle()
my_turtle.shape("turtle")

def rect():
    for i in range(4):
      my_turtle.forward(50)
      my_turtle.left(90)


rect()
my_turtle.forward(50)
rect()
my_turtle.forward(50)
rect()

```