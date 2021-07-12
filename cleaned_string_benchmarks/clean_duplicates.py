from glob import glob

import os

for file in glob("*.analysis"):
    target_folder = file.replace(".analysis", "")
    with open(file, "r") as infile:
        for line in infile:
            line = line.strip("\n")
            if line == "":
                continue
            if line == "---Begin OperatorStatistics: ---":
                break

            parts = line.split("\t")
            parts = [x for x in parts if x != ""]
            if int(parts[-2]) != 1:
                files = parts[-1].strip(" []")
                files = [x.strip() for x in files.split(",") if x != ""]
                for toBeRemoved in files:
                    if not toBeRemoved.startswith(target_folder):
                        toBeRemoved = os.path.join(target_folder, toBeRemoved)
                    os.remove(toBeRemoved)
                    print(os.path.basename(toBeRemoved).split("_", 1)[0])
