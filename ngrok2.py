import requests
import json

def get_ngrok_url():
    try:
        response = requests.get('http://127.0.0.1:4040/api/tunnels')
        data = response.json()
        for tunnel in data['tunnels']:
            if tunnel['proto'] == 'https' or tunnel['proto'] == 'http':
                return tunnel['public_url']
    except Exception as e:
        print("Error fetching ngrok URL:", e)
        return None

def main():
    ngrok_url = get_ngrok_url()
    if ngrok_url:
        print("Ngrok URL:", ngrok_url)
    else:
        print("Failed to retrieve ngrok URL.")

if __name__ == "__main__":
    main()

