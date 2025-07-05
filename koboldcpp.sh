echo Downloading KoboldCpp, please wait...
wget -O dlfile.tmp https://kcpplinux.concedo.workers.dev && mv dlfile.tmp koboldcpp_linux
test -f koboldcpp_linux && echo Download Successful || echo Download Failed
chmod +x ./koboldcpp_linux
apt update
apt install aria2 -y
model="https://huggingface.co/bartowski/L3-8B-Stheno-v3.2-GGUF/resolve/main/L3-8B-Stheno-v3.2-Q5_K_M.gguf"
echo starting koboldcpp
./koboldcpp_linux --model $model --usecublas 0 mmq --chatcompletionsadapter AutoGuess --multiuser --multiplayer --gpulayers 99 --contextsize 4096 --websearch --quiet --remotetunnel --flashattention
