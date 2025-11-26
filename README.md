# Let's Fight With CMake, Docker, and Some Dependencies

Repository for the [CMake exercise](https://github.com/Simulation-Software-Engineering/Lecture-Material/blob/main/03_building_and_packaging/cmake_exercise.md).

1. Build a docker image

```bash
docker buildx build --tag sse-cmake-image .
```

2. Create and run docker container in interactive mode

```bash
docker run -it --mount type=bind,src=.,dst=/cmake-exercise sse-cmake-image:latest
```

3. Once inside the container, you are inside the `cmake-exercise` directory, and can run 

```bash
./build_and_run.sh
```