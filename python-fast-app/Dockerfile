FROM python:3.10 AS build

WORKDIR /pyapp

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

COPY install.sh /pyapp/install.sh

RUN chmod +x /pyapp/install.sh && bash /pyapp/install.sh

FROM python:3.10-slim AS final

WORKDIR /pyapp

COPY --from=build /root/.local /root/.local

ENV PATH="/root/.local/bin:$PATH"

ENV PATH="/usr/bin:$PATH"

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

FROM python:3.10-slim AS test

WORKDIR /pyapp

COPY --from=build /root/.local /root/.local

ENV PATH="/root/.local/bin:$PATH"

COPY . .

RUN pip install --user pytest

CMD ["/bin/sh", "-c", "sleep 10 && pytest --disable-warnings"]