import re
import subprocess

filename = "main"

# First line command
command1 = f"/opt/cad/soft/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -ffunction-sections -fdata-sections -mpreferred-stack-boundary=3 -c {filename}.c -o {filename}.o"
subprocess.run(command1, shell=True)

# Second line command
command2 = f"/opt/cad/soft/riscv32i/bin/riscv32-unknown-elf-ld -T linker_script.ld {filename}.o /opt/cad/soft/riscv32i/lib/gcc/riscv32-unknown-elf/8.2.0/libgcc.a -o {filename}.elf"
subprocess.run(command2, shell=True)

# Third line command
command3 = f"/opt/cad/soft/riscv32i/bin/riscv32-unknown-elf-objdump -D -j .text {filename}.elf > {filename}.txt"
subprocess.run(command3, shell=True)

def extract_hex_from_asm(asm_file, output_file):
	hex_opcodes = []
	with open(asm_file, 'r') as f:
		for line in f:
			# regular expressions to match the characters
			match = re.match(r'^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]+)', line)
			if match:
				# character formatting
				hex_value = match.group(2)
				formatted_hex = ''.join(hex_value[i:i+2] for i in range(0, len(hex_value), 2))
				parts = [formatted_hex[i:i+2] for i in range(0, len(formatted_hex), 2)]
				#parts = parts[::-1]
				for part in parts:
					hex_opcodes.append(part)

	hex_opcodes = ["3f", "f0", "01", "13"] + hex_opcodes;
	with open(output_file, 'w') as f:
		for opcode in hex_opcodes:
			f.write(opcode + '\n')

def main():
    asm_file = f"{filename}.txt"
    output_file = f"inst_mem.hex"
    extract_hex_from_asm(asm_file, output_file)

if __name__ == "__main__":
    main()

