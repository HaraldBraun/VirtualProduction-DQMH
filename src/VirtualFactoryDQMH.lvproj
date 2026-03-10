<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="25008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">25.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Libraries" Type="Folder"/>
		<Item Name="Modules" Type="Folder">
			<Item Name="Central Monitor" Type="Folder">
				<Item Name="Central Monitor.lvlib" Type="Library" URL="../Modules/Central Monitor/Central Monitor.lvlib"/>
				<Item Name="Test Central Monitor API.vi" Type="VI" URL="../Modules/Central Monitor/Test Central Monitor API.vi"/>
			</Item>
			<Item Name="Production Unit" Type="Folder">
				<Item Name="Clone Registration" Type="Folder"/>
				<Item Name="VI Reference Management" Type="Folder"/>
				<Item Name="Production Unit.lvlib" Type="Library" URL="../Modules/Production Unit/Production Unit.lvlib"/>
				<Item Name="Test Production Unit API.vi" Type="VI" URL="../Modules/Production Unit/Test Production Unit API.vi"/>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
