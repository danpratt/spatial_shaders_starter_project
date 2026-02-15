shader_type spatial;

uniform vec3 sphere_color: source_color = vec3(1.0);
uniform sampler2D texture_image;

void vertex() {
	
}

void fragment() {
	vec2 adjusted_uv = UV * 4.0;
	adjusted_uv.y += sin(adjusted_uv.x * 50.0 + TIME * 10.0) * 0.025;
	
	vec4 texture_color = texture(texture_image, adjusted_uv);
	
	ALBEDO = texture_color.rgb;
}
