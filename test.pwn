stock getXYForAngleAndDistance(playerid, &Float:x, &Float:y, Float:distance, Float:angle)
{
    new Float:ang;
    GetPlayerPos(playerid, x, y, ang);
    GetPlayerFacingAngle(playerid, ang);
    if (GetPlayerVehicleID(playerid))
    {
      GetVehicleZAngle(GetPlayerVehicleID(playerid), ang);
    }
    x += (distance * floatsin(-ang+angle, degrees));
    y += (distance * floatcos(-ang+angle, degrees));
}