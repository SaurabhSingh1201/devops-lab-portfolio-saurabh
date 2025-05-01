# Monitoring Stack with Prometheus & Grafana

This setup uses Docker Compose to run Prometheus and Grafana, scraping mock metrics.

## Files

- `docker-compose.yml`: Defines Prometheus and Grafana containers.
- `prometheus.yml`: Prometheus configuration.
- `mock_metrics.py`: Simple Flask app exposing random metrics.

## Steps

1. Install [Docker](https://www.docker.com/products/docker-desktop).
2. Run the following command to start the stack:
   ```bash
   docker-compose up