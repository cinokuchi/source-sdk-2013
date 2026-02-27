m_Speed <- null

function OnPostSpawn(){
    self.GetRootMoveParent().AcceptInput("RunScriptCode", "registerRotator()", null, self)
    // 8 is MOVETYPE_NOCLIP. Doesn't quite work as intended.
    self.SetMoveType(8, 0)
    EntFire("maker_logic_script", "RunScriptCode", "setRotationSpeed()")
}

function setRotationSpeed(speed){
    m_Speed = speed
    self.SetAngularVelocity(m_Speed, 0, 0)
}

function reverse(){
    printl(self)
}