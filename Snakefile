rule get_all_archive:
  input: 
    script = "code/get_ghcnd_data.bash"
  output:
    "data/USW00013897.dly"
  params:
    "USW00013897.dly"
  shell:
    """
    {input.script} {params}
    """

