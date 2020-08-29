---
title: Python awesome
category: Python
layout: 2017/sheet
updated: 2020-08-23
---

### 9\*9 times table

```txt
1 * 1 = 1
1 * 2 = 2  2 * 2 = 4
1 * 3 = 3  2 * 3 = 6  3 * 3 = 9
1 * 4 = 4  2 * 4 = 8  3 * 4 = 12 4 * 4 = 16
1 * 5 = 5  2 * 5 = 10 3 * 5 = 15 4 * 5 = 20 5 * 5 = 25
1 * 6 = 6  2 * 6 = 12 3 * 6 = 18 4 * 6 = 24 5 * 6 = 30 6 * 6 = 36
1 * 7 = 7  2 * 7 = 14 3 * 7 = 21 4 * 7 = 28 5 * 7 = 35 6 * 7 = 42 7 * 7 = 49
1 * 8 = 8  2 * 8 = 16 3 * 8 = 24 4 * 8 = 32 5 * 8 = 40 6 * 8 = 48 7 * 8 = 56 8 * 8 = 64
1 * 9 = 9  2 * 9 = 18 3 * 9 = 27 4 * 9 = 36 5 * 9 = 45 6 * 9 = 54 7 * 9 = 63 8 * 9 = 72 9 * 9 = 81
```

```python
print('\n'.join([
    ' '.join(['%s * %s = % - 2s' % (y, x , x*y)
        for y in range(1, x + 1)])
            for x in range(1, 10)
    ]))
```

### Heat

```txt
                d!Hello w           world!Hel
            orld!Hello world!   lo world!Hello wo
          world!Hello world!Hello world!Hello world
         world!Hello world!Hello world!Hello world!H
        world!Hello world!Hello world!Hello world!Hel
        orld!Hello world!Hello world!Hello world!Hell
        rld!Hello world!Hello world!Hello world!Hello
        ld!Hello world!Hello world!Hello world!Hello
        d!Hello world!Hello world!Hello world!Hello w
        !Hello world!Hello world!Hello world!Hello wo
         ello world!Hello world!Hello world!Hello wo
          lo world!Hello world!Hello world!Hello wo
          o world!Hello world!Hello world!Hello wor
            orld!Hello world!Hello world!Hello wo
             ld!Hello world!Hello world!Hello wo
              !Hello world!Hello world!Hello wo
                llo world!Hello world!Hello w
                   world!Hello world!Hello
                    rld!Hello world!Hello
                       Hello world!Hel
                          o world!H
                             rld
                              d
```

```python
print('\n'.join([
    ''.join([('Hello world!'[(x-y)%12]
        if((x*0.05)**2+(y*0.1)**2-1)**3-(x*0.05)**2*(y*0.1)**3<=0 else' ')
            for x in range(-30,30)])
                for y in range(15,-15,-1)
    ]))
```
