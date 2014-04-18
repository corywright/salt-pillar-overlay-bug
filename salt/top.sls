base:
  '*':
    - empty

{% for dc in 'dfw2', 'hkg1', 'iad3', 'lon3', 'ord1', 'syd2' %}
{{ dc }}:
  'dc:{{ dc }}':
    - match: grain
    - files
{% endfor %}
