FROM vitess/bootstrap:mysql56

# Clear out old tree from bootstrap image.
USER root
RUN apt-get --yes --fix-missing update && apt-get install --yes git vim tcpdump strace python-ptrace less lv
RUN rm -rf /vt/src/github.com/youtube/vitess

# Re-copy sources from working tree
COPY . /vt/src/github.com/youtube/vitess

# Fix permissions
RUN chown -R vitess:vitess /vt
#USER vitess

# Build Vitess
RUN make build
