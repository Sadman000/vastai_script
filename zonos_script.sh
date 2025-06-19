apt install -y espeak-ng
pip install -U uv
uv sync
uv pip install -e .
uv run gradio_interface.py
