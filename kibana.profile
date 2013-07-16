{
  "title": "Logstash Search",
  "rows": [
    {
      "title": "Options",
      "height": "50px",
      "editable": true,
      "collapse": false,
      "collapsable": true,
      "panels": [
        {
          "loading": false,
          "error": "",
          "span": 5,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "timepicker",
          "mode": "relative",
          "time_options": [
            "5m",
            "15m",
            "1h",
            "6h",
            "12h",
            "24h",
            "2d",
            "5d"
          ],
          "timespan": "6h",
          "timefield": "@timestamp",
          "index": "[logstash-]YYYY.MM.DD",
          "defaultindex": "NOINDEX",
          "index_interval": "day",
          "refresh": {
            "enable": false,
            "interval": 3,
            "min": 3
          },
          "status": "Stable",
          "timeformat": ""
        },
        {
          "loading": false,
          "error": false,
          "span": 3,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "dashcontrol",
          "save": {
            "gist": false,
            "elasticsearch": true,
            "local": true,
            "default": true
          },
          "load": {
            "gist": true,
            "elasticsearch": true,
            "local": true
          },
          "hide_control": false,
          "elasticsearch_size": 20,
          "elasticsearch_saveto": "kibana-int",
          "temp": true,
          "temp_ttl": "30d",
          "status": "Stable"
        }
      ]
    },
    {
      "title": "Query",
      "height": "50px",
      "editable": true,
      "collapse": false,
      "collapsable": true,
      "panels": [
        {
          "loading": false,
          "error": false,
          "span": 12,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "stringquery",
          "label": "Search",
          "query": "*",
          "size": 100,
          "sort": [
            "_score",
            "desc"
          ],
          "multi": false,
          "multi_arrange": "horizontal",
          "status": "Stable",
          "history": [],
          "remember": 10
        }
      ]
    },
    {
      "title": "Graph",
      "height": "350px",
      "editable": true,
      "collapse": false,
      "collapsable": true,
      "panels": [
        {
          "loading": false,
          "span": 12,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "histogram",
          "query": [
            {
              "query": "*",
              "label": "*"
            }
          ],
          "interval": "5m",
          "show": [
            "points",
            "lines",
            "legend",
            "x-axis",
            "y-axis"
          ],
          "timezone": "browser",
          "spyable": true,
          "zoomlinks": true,
          "fill": 0,
          "linewidth": 2,
          "bars": true,
          "stack": true,
          "points": false,
          "lines": false,
          "legend": true,
          "x-axis": true,
          "y-axis": true,
          "status": "Stable",
          "mode": "count",
          "value_field": null,
          "auto_int": true,
          "resolution": 100,
          "percentage": false,
          "interactive": true
        },
        {
          "loading": false,
          "span": 0,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "hits",
          "query": [
            {
              "query": "*",
              "label": "*"
            }
          ],
          "style": {
            "font-size": "9pt"
          },
          "aggregate": false,
          "arrangement": "horizontal",
          "chart": true,
          "counters": true,
          "count_pos": "above",
          "status": "Beta",
          "counter_pos": "above",
          "donut": false,
          "tilt": false,
          "labels": true
        }
      ]
    },
    {
      "title": "Events",
      "height": "350px",
      "editable": true,
      "collapse": false,
      "collapsable": true,
      "panels": [
        {
          "loading": false,
          "error": false,
          "span": 2,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "fields",
          "style": {},
          "arrange": "vertical",
          "micropanel_position": "right",
          "sort": [
            "@timestamp",
            "desc"
          ],
          "query": "*",
          "status": "Beta"
        },
        {
          "loading": false,
          "error": false,
          "span": 10,
          "editable": true,
          "group": [
            "default"
          ],
          "type": "table",
          "query": "*",
          "interval": "1y",
          "show": [
            "bars",
            "y-axis",
            "x-axis",
            "legend"
          ],
          "fill": 3,
          "overflow": "min-height",
          "timezone": "browser",
          "spyable": true,
          "zoomlinks": true,
          "size": 50,
          "pages": 10,
          "offset": 0,
          "sort": [
            "@timestamp",
            "desc"
          ],
          "style": {
            "font-size": "9pt"
          },
          "fields": [
            "@timestamp",
            "@fields.target",
            "@fields.loglevel",
            "@fields.uri",
            "@fields.state",
            "@fields.message"
          ],
          "sortable": true,
          "status": "Stable",
          "highlight": [],
          "header": true,
          "paging": true
        }
      ]
    }
  ],
  "editable": true,
  "last": null
}
