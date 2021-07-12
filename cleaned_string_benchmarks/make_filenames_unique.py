from glob import glob
from pathlib import Path

import os

counter = 17589
for file in glob("jdart/**/*.smt*", recursive=True):
    p = Path(file)
    new_file_name = str(counter) + "_" + p.name
    print(new_file_name)
    p.rename(p.parent.joinpath(new_file_name))
    print(p)
    counter += 1

print(counter)
