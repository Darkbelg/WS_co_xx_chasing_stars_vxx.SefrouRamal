params ["_grpLeader"];

if(!isServer) exitWith {};

{
	if ((_grpLeader distance2D _x) <= 1000) then {
		deleteVehicle (vehicle _x);
		deleteVehicle _x;	
	};
	(vehicle _x) setDamage 1;
	_x setDamage 1;
} forEach (units (group _grpLeader));

deleteGroup (group _grpLeader);
