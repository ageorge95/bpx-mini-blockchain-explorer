root=$(pwd)

# exit script when an error is detected
set -o errexit

# installation
python3 -m venv venv
ln -s venv/bin/activate .

. ./activate

python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# post-installation message
echo "
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bpx-mini-blockchain-explorer install.sh complete.

Run '. activate' to activate the Python virtual environment and
'deactivate' to, well, deactivate it.

Run 'python main.py' to run the script.

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"

rm -r $root/build
rm -r $root/dist
rm -r $root/SERPENT.egg-info