apt install -y espeak-ng
pip install -U uv
uv sync
uv pip install --system -e .
uv run gradio_interface.py
