# Rocket Landing Control

Trajectory optimization and feedback control for a planar Falcon 9–style rocket, implemented with Drake and visualized in Meshcat.

Compares LQR, trajectory stabilization, and model predictive control, with thrust, gimbal-angle, and ground constraints. The implementation is in `main.ipynb`; the [project report](6_8210_Final_Report.pdf) describes the model and experiments.

## Run

With Docker installed:

```bash
docker build -t falcon9 .
docker run --rm -it -p 127.0.0.1:6999:6999 -p 127.0.0.1:7000:7000 \
    -v "$PWD":/home falcon9 \
    jupyter lab --ip=0.0.0.0 --allow-root --no-browser --port=6999
```

Open the Jupyter URL printed in the terminal, select `main.ipynb`, and run its cells in order. Meshcat visualization is exposed on port 7000. Controller selection and simulation settings are in the notebook.
