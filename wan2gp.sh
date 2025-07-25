git clone https://github.com/deepbeepmeep/Wan2GP.git
cd Wan2GP
conda create -n wan2gp python=3.10.9
conda activate wan2gp
pip install torch==2.7.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/test/cu124
pip install -r requirements.txt
# upgrade gradio to latest version otherwise api calls wont work
pip install --upgrade gradio
pip install --upgrade gradio_client
python3 wgp.py --i2v-14B --server-port 17860 --share   # Image-to-video
