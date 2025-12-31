FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /assets/images/icon-star.svg /usr/share/nginx/html/FAQAccordion/assets/images/
COPY /assets/images/icon-plus.svg /usr/share/nginx/html/FAQAccordion/assets/images/
COPY /assets/images/icon-minus.svg /usr/share/nginx/html/FAQAccordion/assets/images/
COPY /assets/images/favicon-32x32.png /usr/share/nginx/html/FAQAccordion/assets/images/
COPY index.html /usr/share/nginx/html/FAQAccordion/
COPY styles.css /usr/share/nginx/html/FAQAccordion/
COPY script.js /usr/share/nginx/html/FAQAccordion/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
