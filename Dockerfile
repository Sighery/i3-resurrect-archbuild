FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./i3-resurrect/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
