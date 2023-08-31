FROM python:3.11-slim-bookworm
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
      postgresql-client

# Copy the split files in
COPY dumps/* /dumps/
ADD create-dumps.sh /create-dumps.sh
RUN /create-dumps.sh

# Copy in the table names
ADD table-names.txt /table-names.txt
ADD drop-views.sql /drop-views.sql
ADD create-views.sql /create-views.sql
ADD check-exists.sql /check-exists.sql
# And load the runtime script
WORKDIR /dumps
ADD wait-and-load.sh /wait-and-load.sh

CMD ["/wait-and-load.sh"]
