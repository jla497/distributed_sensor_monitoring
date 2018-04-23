#!/bin/bash

cd sensors/

go run ./sensor.go -name turbine_pressure_out &
go run ./sensor.go -name boiler_pressure_out &
go run ./sensor.go -name condensor_pressure_out &

cd ../coordinator/exec/
go run ./main.go &