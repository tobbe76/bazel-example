import argparse

parser = argparse.ArgumentParser(description="Merge two files", prog="filemerge.py")
parser.add_argument('-o', '--outfile', required=True, help="Resulting file")
parser.add_argument('-f','--files', action='append', help='Input files', required=True)
args = parser.parse_args()

mergedContent = []

for file in args.files:
    f = open(file, 'r')
    mergedContent += f.readlines()
    f.close()

with open( args.outfile, 'w') as f:
    for i in mergedContent:
        f.write("%s\n" % i)
