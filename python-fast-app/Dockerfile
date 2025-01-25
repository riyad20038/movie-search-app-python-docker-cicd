FROM python:3.10 AS build

WORKDIR /pyapp

COPY requirements.txt req.txt

RUN pip install --user -r req.txt

RUN apt update && apt install -y bash


FROM python:3.10-slim

WORKDIR /pyapp

COPY --from=build /root/.local /root/.local

COPY install.sh /pyapp/install.sh

RUN chmod +x /pyapp/install.sh && /bin/sh /pyapp/install.sh

ENV PATH="/root/.local/bin:PATH"

ENV PATH="/usr/bin:$PATH"


COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

FROM python:3.10-slim as test

RUN pip install pytest

CMD [ "python","-m","pytest" ]