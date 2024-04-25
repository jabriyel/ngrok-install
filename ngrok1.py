import subprocess
import re

def start_ngrok():
    ngrok_process = subprocess.Popen(['ngrok', 'http', '80'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
    return ngrok_process

def main():
    ngrok_process = start_ngrok()
    print("Ngrok service started.")

if __name__ == "__main__":
    main()

