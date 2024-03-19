# padcirc-model

- To build the docker image: `docker build -t padcirc-docker .`
- Now we are ready to run the model
- Some mandatory mapping needs to be done: 
- `docker run -v {path_to_model_dir}:/model -v {path_to_current_ramp_dir}:/output -ti --rm padcirc-docker /bin/bash -c "chmod +x -R /model; cd /output; /model/adcprep --np 3 --partmesh;"`
- `docker run -v {path_to_model_dir}:/model -v {path_to_current_ramp_dir}:/output -ti --rm padcirc-docker /bin/bash -c "chmod +x -R /model; cd /output; /model/adcprep --np 3 --prepall;"`
- `docker run -v {path_to_model_dir}:/model -v {path_to_current_ramp_dir}:/output -ti --rm padcirc-docker /bin/bash -c "chmod +x -R /model; cd /output; mpirun -np 3 /model/padcirc;"`
