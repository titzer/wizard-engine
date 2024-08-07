import sys, struct

"""
    Simple script that validates the trace generated from the wizard R3 monitor
    using the replay module, against the original trace of all 96 wasm-r3 tests.
    
    Since the replay module makes changes to the function definitions and indices, we
    must check each trace entry individually, instead of comparing the entire wizard
    monitor output with the reference trace.
    
    When using this script, the wizard monitor's output should be piped to the stdin of
    this script, and the reference trace file's path should be passed as an argument.
"""


def hex_to_float(hex_str):
    byte_data = bytes.fromhex(hex_str)
    if len(byte_data) == 4:
        return struct.unpack("!f", byte_data)[0]
    elif len(byte_data) == 8:
        return struct.unpack("!d", byte_data)[0]
    return None


def main():
    ref_trace_path = sys.argv[1]
    with open(ref_trace_path, "r") as file:
        ref_trace = file.read().strip().splitlines()
    generated_trace = sys.stdin.read().strip().splitlines()
    i, j = 0, 0
    while i < len(ref_trace) and j < len(generated_trace):
        ref_entry_list = ref_trace[i].split(";")
        gen_entry_list = generated_trace[j].split(";")
        ref_type = ref_entry_list[0]
        gen_type = gen_entry_list[0]

        if ref_type != gen_type:
            if ref_type in [
                "IG",
                "ER",
            ]:  # replay module will never generate IG, ER events
                i += 1
                continue
            else:
                return False

        if ref_type in [
            "IC",
            "IR",
        ]:
            # the func_index won't match up between the original module and the replay module,
            # so we only check the event type
            i += 1
            j += 1
            continue

        if ref_type == "EC":  # check everything besides the func_index
            all_match = ref_entry_list[2:] == gen_entry_list[2:]
        elif ref_type == "TC":  # check everything besides the func_index
            all_match = ref_entry_list[2:] == gen_entry_list[2:]
        elif ref_type in ["L", "MG", "TG"]:
            all_match = ref_entry_list == gen_entry_list
        elif ref_type == "T":
            all_match = (
                ref_entry_list[1:4] == gen_entry_list[1:4]
                and ref_entry_list[5] == gen_entry_list[5]
            )
        elif ref_type == "G":
            # global index might change in the replay module, so we only check the value
            all_match = ref_entry_list[2] == gen_entry_list[2]
        else:
            all_match = True
        if not all_match:
            return False
        i += 1
        j += 1
    return True


if __name__ == "__main__":
    if main():
        sys.exit(0)
    sys.exit(1)
