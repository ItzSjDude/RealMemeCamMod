import re

path = "CoreSdk/8pro/com.oplus.camera.unit.sdk/src/com/google/oplus/protobuf/ByteString.java"
with open(path, "r") as f:
    c = f.read()

# 1. Rename iterator2 to iterator
c = c.replace("iterator2", "iterator")

# 2. Change visibility of overridden methods
methods = [
    "void copyToInternal",
    "int getTreeDepth",
    "byte internalByteAt",
    "boolean isBalanced",
    "int partialHash",
    "int partialIsValidUtf8",
    "void writeTo",
    "void writeToInternal",
    "void writeToReverse"
]

for m in methods:
    c = re.sub(r'protected\s+(final\s+)?' + m, r'public \1' + m, c)
    c = re.sub(r'^( +)(final\s+)?' + m, r'\1public \2' + m, c, flags=re.MULTILINE)

with open(path, "w") as f:
    f.write(c)
