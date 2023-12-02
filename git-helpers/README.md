Comparing PDF files in `git diff` commands
=====
<https://gist.github.com/shhyou/a49b7ab18e2ae5f34d6d8a658d59c79f>

The typical approach to comparing PDF files in `git diff` outputs
amounts to converting PDF files into texts through `pdftotext` and
show the diff of conversion.

1. Install the utility `pdftotext` from the project `poppler`
2. Add the current directory to `PATH`. The `pdf-astextplain` script in this directory
   invokes `pdftotext` to output PDF files in plain text. Other scripts are similar.
3. Enable the handler `pdffiles`, `zip-info` and `racket-wxme` in `diff` for PDF files and
   instruct the handler to call the relevant scripts in this directory:
    ```
    echo "[diff \"pdffiles\"]\n\ttextconv = pdf-astextplain\n\tbinary = true" >> ../.git/config
    echo "[diff \"zip-info\"]\n\ttextconv = zip-info-astext\n\tbinary = true" >> ../.git/config
    echo "[diff \"racket-wxme\"]\n\ttextconv = racket-wxme-astext" >> ../.git/config
    ```
    The file `dot-gitconfig` in this directory shows an example configuration.

    See: <https://git-scm.com/docs/gitattributes#_marking_files_as_binary>,
    <https://git-scm.com/docs/git-diff#Documentation/git-diff.txt---textconv>
    or <https://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes>

    **Note.** `../.git/config` should be the local git config file for the current repository.
    In other words, it is `PROJECT_ROOT/.git/config`. Similarly, `../.gitattributes` is the local
    git attribute file for this repository.

    The content of the provided `.gitattributes` file is:
    ```
    *.pdf diff=pdffiles
    *.zip diff=zip-info
    *.rkt diff=racket-wxme
    ```
4. In some GIT implementations, there is a `astextplain` script that converts
   PDF and other files to text for `diff` as well.  
   See: <https://github.com/git-for-windows/build-extra/blob/c223c7757745c1df552c0dd4628c368aaea11f32/git-extra/astextplain>
