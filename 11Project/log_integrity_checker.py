import os
import hashlib
import json
import argparse
from datetime import datetime

HASH_STORE = "log_hashes.json"

def compute_sha256(file_path):
    sha256_hash = hashlib.sha256()
    with open(file_path, "rb") as f:
        for block in iter(lambda: f.read(4096), b""):
            sha256_hash.update(block)
    return sha256_hash.hexdigest()
        
def get_all_log_files(input_path):
    if os.path.isfile(input_path):
        return [input_path]
    elif os.path.isdir(input_path):
        return [os.path.join(dp, f) for dp, _, files in os.walk(input_path) for f in files if f.endswith(".log")]
    else:
        raise FileNotFoundError(f"Invalid path: {input_path}")

def load_hashes():
    if os.path.exists(HASH_STORE):
        with open(HASH_STORE, 'r') as f:
            return json.load(f)
    return {}
    
def save_hashes(hashes):
    with open(HASH_STORE, 'w') as f:
        json.dump(hashes, f, indent=4)
        
def initialize_hashes(file_list):
    print(" Initializing hash store...")
    hashes = {f: compute_sha256(f) for f in file_list}
    save_hashes(hashes)
    print(" Initialization complete. Hashes stored securely.")
    
def verify_integrity(file_list):
    stored_hashes = load_hashes()
    tampered_files = []
    
    for file in file_list:
        current_hash = compute_sha256(file)
        stored_hash = stored_hashes.get(file)
        
        if stored_hash is None:
            print(f" New file detected (not previously tracked): {file}")
        elif current_hash != stored_hash:
            tampered_files.append(file)
            
    if tampered_files:
        print("\n Tampering Detected:")
        for file in tampered_files:
            print(f" - {file}")
    else:
        print("\n All files verified. No tampering detected.")

def main():
    parser = argparse.ArgumentParser(description="Log File Integrity Verifier")
    parser.add_argument("path", help="Path to a log file or directory containing log files")
    parser.add_argument("--init", action="store_true", help="Re-initialize the stored hashes")
    
    args = parser.parse_args()
    log_files = get_all_log_files(args.path)
    
    if args.init or not os.path.exists(HASH_STORE):
        initialize_hashes(log_files)
    else:
        verify_integrity(log_files)
        
if __name__ == "__main__":
    main()
