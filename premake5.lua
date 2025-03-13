include "./Elm/vendor/premake/premake_customization/solution_items.lua"
include "dependencies.lua"

workspace "GameName"
	architecture "x86_64"
	startproject "GameName"

	configurations {
		"Debug",
		"Release",
		"Dist",
	}

	-- solution_items {
	-- 	".editorconfig"
	-- }

	flags {
		"MultiProcessorCompile"
	}

	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	
	group "Dependencies"
		include "Elm/Elm/vendor/glad"
		include "Elm/Elm/vendor/glfw"
		include "Elm/Elm/vendor/imgui"
	group ""
	
	include "Elm/Elm"
	include "GameName"
