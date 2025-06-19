apt install -y espeak-ng
git clone https://github.com/Zyphra/Zonos.git
pip install -U uv
cd ./Zonos
uv sync
uv pip install --system -e .
echo "GRADIO_SHARE"
echo $GRADIO_SHARE
uv run gradio_interface.py
