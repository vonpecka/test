FROM bitnami/odoo:18

USER root
COPY addons/ /opt/bitnami/odoo/addons/
RUN chown -R 1001:1001 /opt/bitnami/odoo/addons

RUN /opt/bitnami/odoo/venv/bin/pip install --no-cache-dir -r /opt/bitnami/odoo/addons/requirements.txt

USER 1001
