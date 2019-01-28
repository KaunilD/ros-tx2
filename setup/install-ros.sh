# installs ROS kinect in Ubuntu 16.04 on Nvidia Tegra TX2


# add repositories
sudo apt-add-repository universe
sudo apt-add-repository multiverse
sudo apt-add-repository restricted

# setup sources.list. allows the OS to accept packages from
# packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# setup keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# update and upgrade
sudo apt-get update
sudo apt-get upgrade

# begin installation. installs entire ROS
sudo apt-get install ros-kinetic-desktop-full

# install rosdep

sudo rosdep init
rosdep update

# install ros-install. package and workspace manager for ROS

sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
