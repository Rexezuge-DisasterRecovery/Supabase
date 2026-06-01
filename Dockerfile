FROM postgres

COPY Backup.sh /Backup.sh

RUN chmod +x /Backup.sh

ENTRYPOINT ["/Backup.sh"]
