--
-- _manifest.lua
-- Manage the list of built-in Premake scripts.
-- Copyright (c) 2002-2008 Jason Perkins and the Premake project
--


-- The master list of built-in scripts. Order is important! If you want to
-- build a new script into Premake, add it to this list.

	local scripts =
	{
		"base/os.lua",
		"base/path.lua",
		"base/string.lua",
		"base/table.lua",
		"base/globals.lua",
		"base/template.lua",
		"base/project.lua",
		"base/configs.lua",
		"base/api.lua",
		"base/cmdline.lua",
		"tools/csc.lua",
		"tools/gcc.lua",
		"tools/ow.lua",
		"base/validate.lua",
		"base/help.lua",
	}


-- The list of templates

	local templates = 
	{
		"actions/codeblocks/codeblocks_workspace.tmpl",
		"actions/codeblocks/codeblocks_cbp.tmpl",
		"actions/codelite/codelite_workspace.tmpl",
		"actions/codelite/codelite_project.tmpl",
		"actions/make/make_solution.tmpl",
		"actions/make/make_cpp.tmpl",
		"actions/make/make_csharp.tmpl",
		"actions/vstudio/vs2002_solution.tmpl",
		"actions/vstudio/vs2003_solution.tmpl",
		"actions/vstudio/vs2005_solution.tmpl",
		"actions/vstudio/vs200x_vcproj.tmpl",
	}
	
	
-- The list of built in actions

	local actions = 
	{
		"actions/clean/_clean.lua",
		"actions/codeblocks/_codeblocks.lua",
		"actions/codelite/_codelite.lua",
		"actions/make/_make.lua",
		"actions/vstudio/_vstudio.lua",
	}
	
	
	
	return scripts, templates, actions