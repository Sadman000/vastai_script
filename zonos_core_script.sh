sudo apt install -y espeak-ng
git clone https://github.com/loscrossos/core_zonos
cd core_zonos

python3.12 -m venv .env_lin
. ./.env_lin/bin/activate

pip install -r requirements.txt
python appzonos.py --inbrowser
