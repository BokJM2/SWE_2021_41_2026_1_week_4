FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set()\n\
    while n != 1:\n\
        if n in seen:\n\
            return False\n\
        seen.add(n)\n\
        n = sum(int(digit) ** 2 for digit in str(n))\n\
    return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
