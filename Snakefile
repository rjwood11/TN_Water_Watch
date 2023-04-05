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
