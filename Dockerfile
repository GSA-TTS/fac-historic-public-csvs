FROM python:3.11-slim-bookworm
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
      postgresql-client 

# Copy the split files in
COPY dumps/* /dumps/
# Concatenate them into a tar.gz
RUN cat /dumps/* > /sql.tar.gz
# Remove the splits, as the TGZ will land in the same place
RUN rm -rf /dumps
# This leaves a set of SQL files in /dumps
RUN tar xvzf sql.tar.gz
RUN rm sql.tar.gz
# Copy in the table names
ADD table-names.txt /table-names.txt
# And load the runtime script
WORKDIR /dumps
ADD wait-and-load.sh /wait-and-load.sh

CMD ["/wait-and-load.sh"]