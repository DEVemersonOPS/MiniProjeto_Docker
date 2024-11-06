FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENV LOGOMARCA="https://i.pinimg.com/originals/7b/a6/47/7ba647d5deea2878a043542074f7f01b.jpg"
ENV FOTO="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRnGGwJ6jVmmbR2VV3tTLwK_71S5pB0mY_CKKXH1i3bl5NfNybM"
ENV NOME="Emerson Jr"
ENV IDADE="23"
ENV EMAIL="Emerson.oliveira.junior.2001@gmail.com"
ENV PROFISSAO="DevOPs Enginier"
ENV SITE="www.DEVemersonOPS.com"
COPY . .
CMD [ "python3","app.py" ]
