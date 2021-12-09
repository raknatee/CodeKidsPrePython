# Lesson 3: Loop

> This lesson learns are based on Python book page 32-35

## Tools
[https://trinket.io/](https://trinket.io/)

## Lesson Learns

Computers are great at doing boring tasks without
complaining. Programmers aren’t, but they are good at
getting computers to do repetitive work for them—by
using loops. **A loop runs the same block of code over
and over again**. There are several different types of loop.
```python
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
print("Hey!")
```

### For loop

```python
for i in range(10):
    print("Hey!")
```

```python
for i in range(10):
    print(i)
```

```python
for i in range(10,15):
    print(i)
```

### While loop
- while(**boolean**) => stops when **boolean** is False
```python
i=0
while(i<10):
    print("Hey!")
    i = i + 1
```
```python
i=0
while(i<10):
    print(i)
    i = i + 2
```

### Loop in Loop in Loop and in Loop
```python
for i in range(5):
    for j in range(i+1):
        print("*")
    print("-----")
```

## Exercises
PythonExercise.pdf Page 21 (Only No.1 and 2)