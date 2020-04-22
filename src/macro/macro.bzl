"""Macro implementation

"""

load("//src/filecreator:filecreator.bzl", "filecreator")

def gen_many_files(nr_of_files):
    """Generates c files.

    Args:
      nr_of_files: Nr of files to generate.

    Returns:
      Names of the files generated

    """

    gen_files = []
    
    for i in range(nr_of_files):
        basename = "genFile_" + str(i)
        filecreator(
            name = basename,
            out = basename + ".c"
        )
        gen_files.append(basename + ".c" )
        
    return gen_files
