---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
image: //via.placeholder.com/640x150
alt_text: "{{ replace .Name "-" " " | title }} | screenshot"
summary: "Zusammenfassung von Projekt {{ replace .Name "-" " " | title }}"
tech_used:
- HUGO-Framework
- JavaScript
- CSS
- HTML


---

Beschreibung von Projekt {{ replace .Name "-" " " | title }}
