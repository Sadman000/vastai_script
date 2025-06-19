apt install -y espeak-ng
pip install -U uv
cd Zonos
uv sync
uv pip install --system -e .
cd 
uv run gradio_interface.py
