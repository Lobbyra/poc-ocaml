FROM ocaml/opam

RUN opam install core yojson dune utop

COPY --chown=opam:opam . poc-ocaml

WORKDIR poc-ocaml
