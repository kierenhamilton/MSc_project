#/usr/bin/env python3
import sys
import re
import os
import subprocess

def extract_and_format(hex_text):
    pattern = re.compile(r'\b([0-9a-f]{8})\b', re.IGNORECASE)
    matches = pattern.findall(hex_text)

    output_lines = []
    for hex_instr in matches:
        bytes_list = [hex_instr[i:i+2] for i in range(0, 8, 2)]
        output_lines.extend(bytes_list)
        output_lines.append("")  # blank line after each 4-byte group

    return "\n".join(output_lines)

def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <source_file.c>")
        sys.exit(1)

    src_file = sys.argv[1]
    if not os.path.isfile(src_file):
        print(f"Error: file '{src_file}' not found")
        sys.exit(1)

    base = os.path.splitext(src_file)[0]

    # Run riscv compile commands
    subprocess.run(
        f"riscv32-unknown-elf-cc -march=rv32i -mabi=ilp32 -nostartfiles -nostdlib -o {base}.elf {src_file}",
        shell=True, check=True)
    subprocess.run(
        f"riscv32-unknown-elf-objcopy -O binary {base}.elf {base}.bin",
        shell=True, check=True)

    with open(f"{base}.dump", "w") as dump_file:
        subprocess.run(
            f"riscv32-unknown-elf-objdump -d {base}.elf",
            shell=True, stdout=dump_file, check=True)

    # Cleanup .elf and .bin files
    os.remove(f"{base}.elf")
    os.remove(f"{base}.bin")

    # Format the .dump file
    with open(f"{base}.dump", "r") as f:
        content = f.read()
    formatted = extract_and_format(content)

    output_file = f"{base}.hex"
    with open(output_file, "w") as f:
        f.write(formatted)

    print(f"Formatted hex bytes written to {output_file}")

if __name__ == "__main__":
    main()
