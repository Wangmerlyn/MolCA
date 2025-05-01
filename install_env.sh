# first check if the conda sh exists
if [ -f /opt/conda/etc/profile.d/conda.sh ]; then
    source /opt/conda/etc/profile.d/conda.sh
    echo "Conda is installed."
else
    echo "Conda is not installed. Please install conda first."
    exit 1
fi

conda create -n molca python=3.8 -y
conda activate molca
# conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.7 -c pytorch -c nvidia
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source $HOME/.cargo/env
pip install vllm tokenizers==0.19.1
conda install pyg -c pyg  -y
pip install git+https://github.com/thunlp/OpenDelta.git
pip install rouge_score nltk ogb peft rdkit salesforce-lavis spacy==3.5.4
pip install -U transformers pytorch-lightning
pip install deepspeed
pip install "pydantic<2.0"
python -c "import nltk; nltk.download('wordnet')"