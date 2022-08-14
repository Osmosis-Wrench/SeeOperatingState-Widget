import TextField.StyleSheet;

class MainWidget extends MovieClip
{
	var WidgetText: TextField;
	var WarningText: TextField;
	var styleSheet: StyleSheet;
	var loading: Boolean;
	var dots: Number;
	var wait: Number;
	
	function MainWidget(){
		super();
		loading = true;
		dots = 0;
		wait = 0;
		InitStyleSheet();
		WidgetText.styleSheet = styleSheet;
		WarningText.styleSheet = styleSheet;
		SetTextMain("");
		SetTextWarning("");
		//SetTextMain("<h2><good>VM Memory Usage: 49%</good></h2><h1><high>VM Overstressed!</high></h1><h2><medium>Time before stack dumps: 25s</medium></h2><h1><low>VM Memory Overloaded!</low></h1>");
		//SetTextWarning("<h1><MajorWarning>STACK DUMP DETECTED</MajorWarning></h1><h2><MinorWarning>Continuing to play in this session seriously increases the chance of save corruption. \n It is reccomended that you exit to the main menu and load a save.</MinorWarning></h2>");
	}
	
	private function InitStyleSheet()
	{
		styleSheet = new StyleSheet();
		
		styleSheet.setStyle("p",{color:"#FFFFFF", fontSize:"17px"});
		styleSheet.setStyle(".list",{color:"#FFFFFF", fontSize:"17px", textIndent:"10px"});
		styleSheet.setStyle("bullet",{color:"#FFFFFF", fontSize:"20px"});
		styleSheet.setStyle("strong",{color:"#FFFFFF", fontWeight:"bold", fontFamily:"$EverywhereBoldFont"});
		styleSheet.setStyle("em",{fontStyle:"italic", fontFamily:"$EverywhereFont"});
		styleSheet.setStyle("underline",{textDecoration:"underline"});
		styleSheet.setStyle("h1",{color:"#FFFFFF", fontSize:"28px"});
		styleSheet.setStyle("h2",{color:"#FFFFFF", fontSize:"24px"});
		styleSheet.setStyle("h3",{color:"#FFFFFF", fontSize:"18px"});
		styleSheet.setStyle("h4",{color:"#FFFFFF", fontSize:"16px"});
		styleSheet.setStyle("h5",{color:"#FFFFFF", fontSize:"14px"});
		styleSheet.setStyle("h6",{color:"#FFFFFF", fontSize:"14px"});
		styleSheet.setStyle("MajorWarning",{color:"#ff5e5e", fontSize:"80px", fontWeight:"bold", fontFamily:"$EverywhereBoldFont"});
		styleSheet.setStyle("MinorWarning",{color:"#ff5e5e", fontSize:"60px", fontWeight:"bold", fontFamily:"$EverywhereBoldFont"});
		styleSheet.setStyle("good",{color:"#a4ff5e"});
		styleSheet.setStyle("low",{color:"#FFFFFF"});
		styleSheet.setStyle("medium",{color:"#ffb75e"});
		styleSheet.setStyle("high",{color:"#ff5e5e"});
	}
	
	public function SetTextMain(NewText): Void
	{
		NewText != undefined ? WidgetText.text = NewText : WidgetText.text = "";
	}
	public function SetTextWarning(NewText): Void 
	{
		NewText != undefined ? WarningText.text = NewText : WarningText.text = "";
	}
}