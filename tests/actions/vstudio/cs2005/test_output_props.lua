--
-- tests/actions/vstudio/cs2005/test_output_props.lua
-- Test the target output settings of a Visual Studio 2005+ C# project.
-- Copyright (c) 2012-2013 Jason Perkins and the Premake project
--

	local suite = test.declare("vstudio_cs2005_output_props")
	local cs2005 = premake.vstudio.cs2005
	local project = premake.project


--
-- Setup and teardown
--

	local sln, prj

	function suite.setup()
		_ACTION = "vs2005"
		sln, prj = test.createsolution()
		language "C#"
	end

	local function prepare()
		local cfg = test.getconfig(prj, "Debug")
		cs2005.outputProps(cfg)
	end


--
-- Check handling of the output directory.
--

	function suite.outputDirectory_onTargetDir()
		targetdir "../build"
		prepare()
		test.capture [[
		<OutputPath>..\build\</OutputPath>
		]]
	end


--
-- Check handling of the intermediates directory.
--

	function suite.intermediateDirectory_onVs2008()
		_ACTION = "vs2008"
		prepare()
		test.capture [[
		<OutputPath>.\</OutputPath>
		<IntermediateOutputPath>obj\Debug\</IntermediateOutputPath>
		]]
	end

	function suite.intermediateDirectory_onVs2010()
		_ACTION = "vs2010"
		prepare()
		test.capture [[
		<OutputPath>.\</OutputPath>
		<BaseIntermediateOutputPath>obj\Debug\</BaseIntermediateOutputPath>
		<IntermediateOutputPath>$(BaseIntermediateOutputPath)</IntermediateOutputPath>
		]]
	end

