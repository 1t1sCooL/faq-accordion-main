FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY assets/ /usr/share/nginx/html/FAQAccordion/assets/
COPY index.html /usr/share/nginx/html/FAQAccordion/
COPY styles.css /usr/share/nginx/html/FAQAccordion/
COPY script.js /usr/share/nginx/html/FAQAccordion/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
