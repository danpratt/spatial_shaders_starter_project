shader_type spatial;

uniform vec3 albedo_color: source_color;
uniform float metallic: hint_range(0.0, 1.0, 0.1);
uniform float roughness: hint_range(0.0, 1.0, 0.1);

void fragment() {
	ALBEDO = albedo_color;
	METALLIC = metallic;
	ROUGHNESS = roughness;
}