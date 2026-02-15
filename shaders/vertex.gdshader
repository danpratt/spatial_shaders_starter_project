shader_type spatial;

void vertex() {
	VERTEX.x += sin(TIME * 10.0 + VERTEX.y * 10.0) * 0.02;
}