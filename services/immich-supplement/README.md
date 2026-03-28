## immich-supplement
An instance of the Machine Learning container for Immich, to take advantage of the NVIDIA GPU. Do note that this takes a non-trivial amount of resources to run, but shouldn't impede normal activities. When this container is running, it can offload the machine learning tasks away from the main Immich instance.

To add this server to your Immich instance, make sure to go to Administration -> Settings -> Machine Learning Settings -> URL, and add this URL above the primary URL: `http://desktop-linux:3003`