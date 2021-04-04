import random

N = 30
nomes = []
apelidos = []

def makeName():
    return " ".join([random.choice(nomes),random.choice(apelidos),random.choice(apelidos)])

def makeUsername(name):
    return name.split(" ")[0] + str(random.randint(0, 1000))

def makeEmail(username):
    return username + "@" + random.choice(["gmail.com", "hotmail.com", "outlook.com", "fe.up.pt"])

def makeDate():
    year = random.choice([str(i) for i in range(2019,2021)])
    month = random.choice([str(i+1) for i in range(12)])
    day = random.choice([str(i+1) for i in range(28)])
    h = random.choice([str(i) for i in range(24)])
    m = random.choice([str(i) for i in range(60)])
    s = random.choice([str(i) for i in range(60)])
    date = f"{year.zfill(2)}-{month.zfill(2)}-{day.zfill(2)} {h.zfill(2)}:{m.zfill(2)}:{s.zfill(2)}"
    return f"strftime('%s', '{date}')" 
    

def main():
    with open("nomes.txt", "r") as file:
        global nomes
        nomes = [i.strip('\n') for i in file.readlines()]
    with open("apelidos.txt", "r") as file:
        global apelidos
        apelidos = [i.strip('\n') for i in file.readlines()]
    
    for i in range(N):
        name = makeName()
        uname = makeUsername(name)
        email = makeEmail(uname)
        date = makeDate()
        print(f"INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES ({i}, '{uname}', '{name}', '{email}', {date});")
    

if __name__ == "__main__":
    main()