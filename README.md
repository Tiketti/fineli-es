# Fineli-Elasticsearch

## The purpose of this project

The intention is to improve the search functionality of Fineli food database by utilizing Elasticsearch.

## Gathering data

```shell
chmod +x input.sh

./input.sh
```

This script will make a `curl` request to API endpoint and `sleep` 2 seconds between calls. The result of each call will be saved in `data/$number.json` file.