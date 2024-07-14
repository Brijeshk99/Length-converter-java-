<!DOCTYPE html> 
<html> 

<head> 
	<title>Length Converter</title> 

	<style> 
		.container { 
			margin: 20px auto; 
			width: 300px; 
			background-color: #f1f1f1; 
			padding: 20px; 
			border-radius: 5px; 
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
		} 

		h1 { 
			text-align: center; 
			margin-bottom: 20px; 
		} 

		input[type="number"] { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		select { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		p { 
			text-align: center; 
			margin-top: 20px; 
			font-weight: bold; 
			font-size: 20px; 
		} 
	</style> 
</head> 

<body> 
	<div class="container"> 
		<h1>Length Converter</h1> 
		<input type="number" id="inputValue"
			placeholder="Enter value"
			oninput="convert()"> 

		<select id="fromUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<select id="toUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<p id="result"></p> 
	</div> 

	<script> 
		function convert() { 
			// Retrieve input values 
			let inputValue = 
				document.getElementById("inputValue").value; 

			let fromUnit = 
				document.getElementById("fromUnit").value; 

			let toUnit = 
				document.getElementById("toUnit").value; 

			// Convert the length based on the selected units 
			let result; 

			if (fromUnit === "cm" && toUnit === "inch") { 
				result = inputValue / 2.54; 
			} else if (fromUnit === "inch" && toUnit === "cm") { 
				result = inputValue * 2.54; 
			} else if (fromUnit === "cm" && toUnit === "feet") { 
				result = inputValue / 30.48; 
			} else if (fromUnit === "feet" && toUnit === "cm") { 
				result = inputValue * 30.48; 
			} else if (fromUnit === "cm" && toUnit === "meter") { 
				result = inputValue / 100; 
			} else if (fromUnit === "meter" && toUnit === "cm") { 
				result = inputValue * 100; 
			} else if (fromUnit === "inch" && toUnit === "feet") { 
				result = inputValue / 12; 
			} else if (fromUnit === "feet" && toUnit === "inch") { 
				result = inputValue * 12; 
			} else if (fromUnit === "inch" && toUnit === "meter") { 
				result = inputValue * 0.0254; 
			} else if (fromUnit === "meter" && toUnit === "inch") { 
				result = inputValue / 0.0254; 
			} else if (fromUnit === "feet" && toUnit === "meter") { 
				result = inputValue * 0.3048; 
			} else if (fromUnit === "meter" && toUnit === "feet") { 
				result = inputValue / 0.3048; 
			} else if (fromUnit === "cm" && toUnit === "yard") { 
				result = inputValue / 91.44; 
			} else if (fromUnit === "yard" && toUnit === "cm") { 
				result = inputValue * 91.44; 
			} else if (fromUnit === "cm" && toUnit === "mile") { 
				result = inputValue / 160934.4; 
			} else if (fromUnit === "mile" && toUnit === "cm") { 
				result = inputValue * 160934.4; 
			} else if (fromUnit === "cm" && toUnit === "kilometer") { 
				result = inputValue / 100000; 
			} else if (fromUnit === "kilometer" && toUnit === "cm") { 
				result = inputValue * 100000; 
			} else if (fromUnit === "inch" && toUnit === "yard") { 
				result = inputValue / 36; 
			} else if (fromUnit === "yard" && toUnit === "inch") { 
				result = inputValue * 36; 
			} else if (fromUnit === "inch" && toUnit === "mile") { 
				result = inputValue / 63360; 
			} else if (fromUnit === "mile" && toUnit === "inch") { 
				result = inputValue * 63360; 
			} else if (fromUnit === "inch" && toUnit === "kilometer") { 
				result = inputValue * 0.0000254; 
			} else if (fromUnit === "kilometer" && toUnit === "inch") { 
				result = inputValue / 0.0000254; 
			} else if (fromUnit === "feet" && toUnit === "yard") { 
				result = inputValue / 3; 
			} else if (fromUnit === "yard" && toUnit === "feet") { 
				result = inputValue * 3; 
			} else if (fromUnit === "feet" && toUnit === "mile") { 
				result = inputValue / 5280; 
			} else if (fromUnit === "mile" && toUnit === "feet") { 
				result = inputValue * 5280; 
			} else if (fromUnit === "feet" && toUnit === "kilometer") { 
				result = inputValue * 0.0003048; 
			} else if (fromUnit === "kilometer" && toUnit === "feet") { 
				result = inputValue / 0.0003048; 
			} else if (fromUnit === "meter" && toUnit === "yard") { 
				result = inputValue * 1.09361; 
			} else if (fromUnit === "yard" && toUnit === "meter") { 
				result = inputValue / 1.09361; 
			} else if (fromUnit === "meter" && toUnit === "mile") { 
				result = inputValue / 1609.34; 
			} else if (fromUnit === "mile" && toUnit === "meter") { 
				result = inputValue * 1609.34; 
			} else if (fromUnit === "meter" && toUnit === "kilometer") { 
				result = inputValue / 1000; 
			} else if (fromUnit === "kilometer" && toUnit === "meter") { 
				result = inputValue * 1000; 
			} else if (fromUnit === "yard" && toUnit === "mile") { 
				result = inputValue / 1760; 
			} else if (fromUnit === "mile" && toUnit === "yard") { 
				result = inputValue * 1760; 
			} else if (fromUnit === "yard" && toUnit === "kilometer") { 
				result = inputValue / 1093.61; 
			} else if (fromUnit === "kilometer" && toUnit === "yard") { 
				result = inputValue * 1093.61; 
			} else if (fromUnit === "mile" && toUnit === "kilometer") { 
				result = inputValue * 1.60934; 
			} else if (fromUnit === "kilometer" && toUnit === "mile") { 
				result = inputValue / 1.60934; 
			} else { 
				result = inputValue; // No conversion needed 
			} 

			// Display the result 
			document.getElementById("result").innerHTML = 
				result.toFixed(4); 
		} 
	</script> 
</body> 

</html>
<!DOCTYPE html> 
<html> 

<head> 
	<title>Length Converter</title> 

	<style> 
		.container { 
			margin: 20px auto; 
			width: 300px; 
			background-color: #f1f1f1; 
			padding: 20px; 
			border-radius: 5px; 
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
		} 

		h1 { 
			text-align: center; 
			margin-bottom: 20px; 
		} 

		input[type="number"] { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		select { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		p { 
			text-align: center; 
			margin-top: 20px; 
			font-weight: bold; 
			font-size: 20px; 
		} 
	</style> 
</head> 

<body> 
	<div class="container"> 
		<h1>Length Converter</h1> 
		<input type="number" id="inputValue"
			placeholder="Enter value"
			oninput="convert()"> 

		<select id="fromUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<select id="toUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<p id="result"></p> 
	</div> 

	<script> 
		function convert() { 
			// Retrieve input values 
			let inputValue = 
				document.getElementById("inputValue").value; 

			let fromUnit = 
				document.getElementById("fromUnit").value; 

			let toUnit = 
				document.getElementById("toUnit").value; 

			// Convert the length based on the selected units 
			let result; 

			if (fromUnit === "cm" && toUnit === "inch") { 
				result = inputValue / 2.54; 
			} else if (fromUnit === "inch" && toUnit === "cm") { 
				result = inputValue * 2.54; 
			} else if (fromUnit === "cm" && toUnit === "feet") { 
				result = inputValue / 30.48; 
			} else if (fromUnit === "feet" && toUnit === "cm") { 
				result = inputValue * 30.48; 
			} else if (fromUnit === "cm" && toUnit === "meter") { 
				result = inputValue / 100; 
			} else if (fromUnit === "meter" && toUnit === "cm") { 
				result = inputValue * 100; 
			} else if (fromUnit === "inch" && toUnit === "feet") { 
				result = inputValue / 12; 
			} else if (fromUnit === "feet" && toUnit === "inch") { 
				result = inputValue * 12; 
			} else if (fromUnit === "inch" && toUnit === "meter") { 
				result = inputValue * 0.0254; 
			} else if (fromUnit === "meter" && toUnit === "inch") { 
				result = inputValue / 0.0254; 
			} else if (fromUnit === "feet" && toUnit === "meter") { 
				result = inputValue * 0.3048; 
			} else if (fromUnit === "meter" && toUnit === "feet") { 
				result = inputValue / 0.3048; 
			} else if (fromUnit === "cm" && toUnit === "yard") { 
				result = inputValue / 91.44; 
			} else if (fromUnit === "yard" && toUnit === "cm") { 
				result = inputValue * 91.44; 
			} else if (fromUnit === "cm" && toUnit === "mile") { 
				result = inputValue / 160934.4; 
			} else if (fromUnit === "mile" && toUnit === "cm") { 
				result = inputValue * 160934.4; 
			} else if (fromUnit === "cm" && toUnit === "kilometer") { 
				result = inputValue / 100000; 
			} else if (fromUnit === "kilometer" && toUnit === "cm") { 
				result = inputValue * 100000; 
			} else if (fromUnit === "inch" && toUnit === "yard") { 
				result = inputValue / 36; 
			} else if (fromUnit === "yard" && toUnit === "inch") { 
				result = inputValue * 36; 
			} else if (fromUnit === "inch" && toUnit === "mile") { 
				result = inputValue / 63360; 
			} else if (fromUnit === "mile" && toUnit === "inch") { 
				result = inputValue * 63360; 
			} else if (fromUnit === "inch" && toUnit === "kilometer") { 
				result = inputValue * 0.0000254; 
			} else if (fromUnit === "kilometer" && toUnit === "inch") { 
				result = inputValue / 0.0000254; 
			} else if (fromUnit === "feet" && toUnit === "yard") { 
				result = inputValue / 3; 
			} else if (fromUnit === "yard" && toUnit === "feet") { 
				result = inputValue * 3; 
			} else if (fromUnit === "feet" && toUnit === "mile") { 
				result = inputValue / 5280; 
			} else if (fromUnit === "mile" && toUnit === "feet") { 
				result = inputValue * 5280; 
			} else if (fromUnit === "feet" && toUnit === "kilometer") { 
				result = inputValue * 0.0003048; 
			} else if (fromUnit === "kilometer" && toUnit === "feet") { 
				result = inputValue / 0.0003048; 
			} else if (fromUnit === "meter" && toUnit === "yard") { 
				result = inputValue * 1.09361; 
			} else if (fromUnit === "yard" && toUnit === "meter") { 
				result = inputValue / 1.09361; 
			} else if (fromUnit === "meter" && toUnit === "mile") { 
				result = inputValue / 1609.34; 
			} else if (fromUnit === "mile" && toUnit === "meter") { 
				result = inputValue * 1609.34; 
			} else if (fromUnit === "meter" && toUnit === "kilometer") { 
				result = inputValue / 1000; 
			} else if (fromUnit === "kilometer" && toUnit === "meter") { 
				result = inputValue * 1000; 
			} else if (fromUnit === "yard" && toUnit === "mile") { 
				result = inputValue / 1760; 
			} else if (fromUnit === "mile" && toUnit === "yard") { 
				result = inputValue * 1760; 
			} else if (fromUnit === "yard" && toUnit === "kilometer") { 
				result = inputValue / 1093.61; 
			} else if (fromUnit === "kilometer" && toUnit === "yard") { 
				result = inputValue * 1093.61; 
			} else if (fromUnit === "mile" && toUnit === "kilometer") { 
				result = inputValue * 1.60934; 
			} else if (fromUnit === "kilometer" && toUnit === "mile") { 
				result = inputValue / 1.60934; 
			} else { 
				result = inputValue; // No conversion needed 
			} 

			// Display the result 
			document.getElementById("result").innerHTML = 
				result.toFixed(4); 
		} 
	</script> 
</body> 

</html>
<!DOCTYPE html> 
<html> 

<head> 
	<title>Length Converter</title> 

	<style> 
		.container { 
			margin: 20px auto; 
			width: 300px; 
			background-color: #f1f1f1; 
			padding: 20px; 
			border-radius: 5px; 
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
		} 

		h1 { 
			text-align: center; 
			margin-bottom: 20px; 
		} 

		input[type="number"] { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		select { 
			width: 100%; 
			padding: 10px; 
			margin-bottom: 10px; 
			box-sizing: border-box; 
		} 

		p { 
			text-align: center; 
			margin-top: 20px; 
			font-weight: bold; 
			font-size: 20px; 
		} 
	</style> 
</head> 

<body> 
	<div class="container"> 
		<h1>Length Converter</h1> 
		<input type="number" id="inputValue"
			placeholder="Enter value"
			oninput="convert()"> 

		<select id="fromUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<select id="toUnit" onchange="convert()"> 
			<option value="cm">Centimeter (cm)</option> 
			<option value="inch">Inch (in)</option> 
			<option value="feet">Feet (ft)</option> 
			<option value="meter">Meter (m)</option> 
			<option value="yard">Yard (yd)</option> 
			<option value="mile">Mile (mi)</option> 
			<option value="kilometer">Kilometer (km)</option> 
		</select> 
		<p id="result"></p> 
	</div> 

	<script> 
		function convert() { 
			// Retrieve input values 
			let inputValue = 
				document.getElementById("inputValue").value; 

			let fromUnit = 
				document.getElementById("fromUnit").value; 

			let toUnit = 
				document.getElementById("toUnit").value; 

			// Convert the length based on the selected units 
			let result; 

			if (fromUnit === "cm" && toUnit === "inch") { 
				result = inputValue / 2.54; 
			} else if (fromUnit === "inch" && toUnit === "cm") { 
				result = inputValue * 2.54; 
			} else if (fromUnit === "cm" && toUnit === "feet") { 
				result = inputValue / 30.48; 
			} else if (fromUnit === "feet" && toUnit === "cm") { 
				result = inputValue * 30.48; 
			} else if (fromUnit === "cm" && toUnit === "meter") { 
				result = inputValue / 100; 
			} else if (fromUnit === "meter" && toUnit === "cm") { 
				result = inputValue * 100; 
			} else if (fromUnit === "inch" && toUnit === "feet") { 
				result = inputValue / 12; 
			} else if (fromUnit === "feet" && toUnit === "inch") { 
				result = inputValue * 12; 
			} else if (fromUnit === "inch" && toUnit === "meter") { 
				result = inputValue * 0.0254; 
			} else if (fromUnit === "meter" && toUnit === "inch") { 
				result = inputValue / 0.0254; 
			} else if (fromUnit === "feet" && toUnit === "meter") { 
				result = inputValue * 0.3048; 
			} else if (fromUnit === "meter" && toUnit === "feet") { 
				result = inputValue / 0.3048; 
			} else if (fromUnit === "cm" && toUnit === "yard") { 
				result = inputValue / 91.44; 
			} else if (fromUnit === "yard" && toUnit === "cm") { 
				result = inputValue * 91.44; 
			} else if (fromUnit === "cm" && toUnit === "mile") { 
				result = inputValue / 160934.4; 
			} else if (fromUnit === "mile" && toUnit === "cm") { 
				result = inputValue * 160934.4; 
			} else if (fromUnit === "cm" && toUnit === "kilometer") { 
				result = inputValue / 100000; 
			} else if (fromUnit === "kilometer" && toUnit === "cm") { 
				result = inputValue * 100000; 
			} else if (fromUnit === "inch" && toUnit === "yard") { 
				result = inputValue / 36; 
			} else if (fromUnit === "yard" && toUnit === "inch") { 
				result = inputValue * 36; 
			} else if (fromUnit === "inch" && toUnit === "mile") { 
				result = inputValue / 63360; 
			} else if (fromUnit === "mile" && toUnit === "inch") { 
				result = inputValue * 63360; 
			} else if (fromUnit === "inch" && toUnit === "kilometer") { 
				result = inputValue * 0.0000254; 
			} else if (fromUnit === "kilometer" && toUnit === "inch") { 
				result = inputValue / 0.0000254; 
			} else if (fromUnit === "feet" && toUnit === "yard") { 
				result = inputValue / 3; 
			} else if (fromUnit === "yard" && toUnit === "feet") { 
				result = inputValue * 3; 
			} else if (fromUnit === "feet" && toUnit === "mile") { 
				result = inputValue / 5280; 
			} else if (fromUnit === "mile" && toUnit === "feet") { 
				result = inputValue * 5280; 
			} else if (fromUnit === "feet" && toUnit === "kilometer") { 
				result = inputValue * 0.0003048; 
			} else if (fromUnit === "kilometer" && toUnit === "feet") { 
				result = inputValue / 0.0003048; 
			} else if (fromUnit === "meter" && toUnit === "yard") { 
				result = inputValue * 1.09361; 
			} else if (fromUnit === "yard" && toUnit === "meter") { 
				result = inputValue / 1.09361; 
			} else if (fromUnit === "meter" && toUnit === "mile") { 
				result = inputValue / 1609.34; 
			} else if (fromUnit === "mile" && toUnit === "meter") { 
				result = inputValue * 1609.34; 
			} else if (fromUnit === "meter" && toUnit === "kilometer") { 
				result = inputValue / 1000; 
			} else if (fromUnit === "kilometer" && toUnit === "meter") { 
				result = inputValue * 1000; 
			} else if (fromUnit === "yard" && toUnit === "mile") { 
				result = inputValue / 1760; 
			} else if (fromUnit === "mile" && toUnit === "yard") { 
				result = inputValue * 1760; 
			} else if (fromUnit === "yard" && toUnit === "kilometer") { 
				result = inputValue / 1093.61; 
			} else if (fromUnit === "kilometer" && toUnit === "yard") { 
				result = inputValue * 1093.61; 
			} else if (fromUnit === "mile" && toUnit === "kilometer") { 
				result = inputValue * 1.60934; 
			} else if (fromUnit === "kilometer" && toUnit === "mile") { 
				result = inputValue / 1.60934; 
			} else { 
				result = inputValue; // No conversion needed 
			} 

			// Display the result 
			document.getElementById("result").innerHTML = 
				result.toFixed(4); 
		} 
	</script> 
</body> 

</html>
