// вероятность выпадения power-up 1 к 5 (0, 1, ..., 4)
if (irandom(4) == 0) {
	instance_create_layer(x, y, "Instances", obj_powers); // создать power-up
}