FROM python:3.10 AS build

WORKDIR /pyapp

COPY requirements.txt .

RUN pip install --user -r requirements.txt

RUN apt update && apt install -y bash

RUN pip install --upgrade pip

FROM python:3.10-slim AS final

WORKDIR /pyapp

COPY --from=build /root/.local /root/.local

COPY install.sh /pyapp/install.sh

RUN chmod +x /pyapp/install.sh && /bin/sh /pyapp/install.sh

ENV PATH="/root/.local/bin:$PATH"

ENV PATH="/usr/bin:$PATH"

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

FROM python:3.10-slim AS test

WORKDIR /pyapp

COPY test_main.py /pyapp/test_main.py

RUN pip install pytest

CMD [ "python","-m","pytest" ]