base:
  '*':
    - global.data
  {% for dc in 'dfw2', 'hkg1', 'iad3', 'lon3', 'ord1', 'syd2' %}
  'dc:{{ dc }}':
    - match: grain
    - {{ dc }}.data
  {% endfor %}
