rule targets:
    input:
      "index.html",
      "data/USC00406403.dly"


rule get_all_archive:
    input:
        script = "code/get_ghcnd_data.bash"
    output:
        "data/USC00406403.dly"
    params:
        file = "USC00406403.dly"
    shell:
        """
        {input.script} {params.file}
        """


rule render_index:
  input:
    rmd = "index.Rmd",
    png = "visuals/dice.png"
  output:
    "index.html"
  shell:
    """
    R -e "library(rmarkdown); render('{input.rmd}')"
    """