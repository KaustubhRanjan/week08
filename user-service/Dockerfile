FROM python:3.12-slim

WORKDIR /app

# Apply Debian security updates from the base image (fixes pcre2
# CVE-2026-103111 flagged by the Docker Scout security gate)
RUN apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install \
    --no-cache-dir \
    --root-user-action=ignore \
    -r requirements.txt

COPY . .

RUN useradd -m appuser
RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]