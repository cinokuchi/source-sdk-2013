function reflect(){
    printl(activator)
    activator.GetRootMoveParent().AcceptInput("RunScriptCode", "reverseRotator()", null, self)
}