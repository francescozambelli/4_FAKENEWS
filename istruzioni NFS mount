
# just once
conda env create --file noemipower.yml
sudo apt install nfs-client
sudo mkdir -p /mnt/nfs/covid_distributed

# every execution
sudo mount 192.168.1.125:/home/noemi/covid_distributed /mnt/nfs/covid_distributed
conda activate noemipower
dask-worker tcp://192.168.1.125:8786
