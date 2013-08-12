#tag WebPage
Begin WebPage SampleWebPage
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   786
   HelpTag         =   ""
   HorizontalCenter=   0
   ImplicitInstance=   True
   Index           =   0
   IsImplicitInstance=   False
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   MinHeight       =   400
   MinWidth        =   600
   Style           =   "None"
   TabOrder        =   0
   Title           =   "Sample KLTableViewController Implementation"
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   770
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _ImplicitInstance=   False
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin KLTableViewController KLTableView1
      AutoToggleSelection=   True
      Cursor          =   0
      Enabled         =   True
      Height          =   382
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      ScrollbarsVisible=   0
      SingleSelectionMode=   True
      Style           =   "273953011"
      TabOrder        =   0
      Top             =   14
      VerticalCenter  =   0
      Visible         =   True
      Width           =   440
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _ShownEventFired=   False
      _VerticalPercent=   0.0
   End
   Begin WebButton Button1
      Caption         =   "Clear"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   50
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button2
      Caption         =   "Load / ReLoad"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   24
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button3
      Caption         =   "Delete Selected Cell"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   219
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button4
      Caption         =   "Insert a Cell at Selection"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   136
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebLabel Label1
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   240
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   2
      Text            =   ""
      Top             =   408
      VerticalCenter  =   0
      Visible         =   True
      Width           =   662
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebTextArea TextArea1
      Cursor          =   0
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   369
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      ReadOnly        =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   4
      Text            =   "KLTableViewController (TVC) is implemented using a data source paradigm. In this kind of pattern, you keep responsibility of the datasource (an array in this example) and the TVC queries your datasource thru events.\n\nWe use two events for this :  NumberOfCells and CellForRowAtIndex to get the cells from you.\n\nYou are responsible of instantiating the cell when requested and providing it. We use in this example an array as an example of a common datasource, but you can use whatever you want. In order to keep the datasource and the TVC in sync, you have to implement several methods to notify and change your cells in the TVC.\n\nFor instance to insert a cell or delete one, there is a proper order to perform this. (see the examples in the buttons on the side). Its easy. But you have to follow convention so that the TVC works properly and in harmony with your datasource.\n\nThe TVC has been written from the ground up for performance. We implemented some events that will aid to improve the appearance of speed and to prevent\nto the extent possible locking the main thread and thus the user interface.\n\nFrom simpler animations, and not duplicating the data source, to lazy loading of unseen or unused cells we covered a wide variety of technics that should make the\nuser experience better. Batch insertions and deletions are also implemented in a way that will help minimize the time the TVC takes to process the cells.\n\nTVC tries to leave more responsibility to the developer so that he can have more flexibility on how to implement it to his application. It is my intention\nto provide greater features. However I want to build it slow and solid and also let other developers contribute their improvements and suggestions to the code base.\n\nLazy loading is implemented using an event and a common method (TableScrolledToEnd + AppendCell). See the examples. But this will give you a bunch of flexibility on how\nto implement this according to your requirements. We use one approach on our example but there are many ways that might work better for you.\n\nThis project is in early beta phase,  Please test extensively before implementing it.\n\n-----\nIMPORTANT NOTICE:\nAs allways, the authors and  or the contributors DO NOT take responsability or liability for any damage that might ocured directly or indirectly of implemmenting\nthis open source contribution, project, classes or code. USE AT YOUR OWN RISK!\n"
      Top             =   408
      VerticalCenter  =   0
      Visible         =   True
      Width           =   710
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebLabel LBL_Status
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   5
      Text            =   "Status?"
      Top             =   343
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebPageSource PageSource1
      Cursor          =   0
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   64
      Location        =   2
      LockedInPosition=   False
      Scope           =   0
      Source          =   "<Style> DIV {\n    -webkit-overflow-scrolling: touch;\n}</Style>\n"
      Style           =   "0"
      TabOrder        =   -1
      TabPanelIndex   =   0
      Top             =   104
      VerticalCenter  =   0
      Visible         =   True
      Width           =   32
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button8
      Caption         =   "Insert 5 Cells at Selection"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   170
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button6
      Caption         =   "Append a Cell"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   102
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button5
      Caption         =   "Scroll To 20"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   309
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
   Begin WebButton Button9
      Caption         =   "Delete from 1 to 10"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   505
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   253
      VerticalCenter  =   0
      Visible         =   True
      Width           =   245
      ZIndex          =   1
      _NeedsRendering =   True
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Property, Flags = &h21
		Private Batch As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CellArray() As CellView
	#tag EndProperty

	#tag Property, Flags = &h0
		CellSelected As Integer = -1
	#tag EndProperty


#tag EndWindowCode

#tag Events KLTableView1
	#tag Event
		Function NumberOfRows() As integer
		  //This is mandatory! We need to return the number of cells our datasource (array) has.
		  Return CellArray.Ubound+1
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellForRowAtIndex(Index as integer) As WebContainer
		  //This is the datasource Event... This is mandatory!!! You have to return an instantiated cell corresponding to the index the event requests.
		  
		  
		  Return CellArray(Index)
		End Function
	#tag EndEvent
	#tag Event
		Sub CellLoadingComplete()
		  //We have loaded all cells....
		  LBL_Status.Text = "Load Complete...."
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellInserted(Cell as WebContainer)
		  //We have inserted a cell.. So we let the user know using this event
		  LBL_Status.Text = "Insert Complete...."
		End Sub
	#tag EndEvent
	#tag Event
		Sub TableScrolledToEnd()
		  //This event is called when the tableview is scrolled all the way down to the end.
		  
		  
		  //We demonstrate here, how to add lazy loading to the table view... Its simple
		  If CellArray.Ubound >= 100 then Return //We limit the ammount of cells we will add to the tableview to a 100 (Just because we can! )
		  
		  for i as integer = 0 to 10 //We are going to add 10 more cells at the end when the user scrolls all the way down.
		    Dim Cell as new CellView
		    
		    cell.Label1.Text = "Lazy Cell... At original Index: " + cstr(CellArray.Ubound)
		    
		    CellArray.Append(cell) // We append the cell to the model.
		    KLTableView1.AppendCell //And we command an append to the TableViewController...
		  next i
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WillBeginCellLoading()
		  LBL_Status.Text = "We are loading cells!"
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellSelected(Cell as WebContainer)
		  //A Cell Has been selected! And we give you the cell so you will know.
		  
		  Dim CellIndex as integer = Self.CellArray.IndexOf(CellView(Cell))
		  
		  Self.LBL_Status.Text = "Selected: " + Cstr(CellIndex)
		  
		  Self.CellSelected = CellIndex //Store selection on a local variable.
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub AllPendingCellsDeleted()
		  //This is called after a batch of deletions has been performed by the controller in response to a user request to delete cells.
		  Self.KLTableView1.ScrollToCellIndex(0, KLTableViewController.ScrollToMode.Top)
		  Self.KLTableView1.InhibitScrollToEndEvent = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub AllPendingCellsInserted()
		  Self.LBL_Status.Text = "All pending cells inserted!"
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellUnSelected(Cell as WebContainer)
		  //A Cell Has been UN selected! And we give you the cell so you will know which.
		  
		  Dim CellIndex as integer = Self.CellArray.IndexOf(CellView(Cell))
		  
		  Self.LBL_Status.Text = "UN SELECTED: " + Cstr(CellIndex)
		  
		  Self.CellSelected = -1 //Since we are only selecting one at a time (See SingleSelectionMode property set to True or Using Inspector).
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ShouldUnSelectCell(Cell as WebContainer, byRef ShouldUnSelect as Boolean)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ShouldSelectCell(Cell as WebContainer, byRef ShouldSelect as Boolean)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAppended(Cell as WebContainer)
		  self.LBL_Status.Text = "Cells Loaded..."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  
		  KLTableView1.ClearTableView
		  Redim self.CellArray(-1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  redim self.CellArray(-1)
		  
		  For i as integer = 0 to 40
		    Dim Cell as new CellView
		    cell.Label1.Text = "CELL Original Index : " +cstr(i)
		    self.CellArray.Append Cell
		  next i
		  
		  
		  
		  self.KLTableView1.ReloadData()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  //See explanation in delete 1 to 10 for more info on deletions.
		  
		  If Self.CellSelected < 0 then Return //No selection? Nothing to delete!
		  
		  
		  KLTableView1.DeleteRow(self.CellSelected) // Command deletion
		  Self.CellArray.Remove(CellSelected) // Update Model
		  
		  KLTableView1.CommitDeletes //Commit it
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Action()
		  // See the insert 5 cells after selection for more instructions.
		  
		  Dim InsertAfter as integer = Self.CellSelected
		  
		  If InsertAfter < 0 then InsertAfter = 0
		  
		  Dim Cell as new CellView
		  CellArray.Insert(InsertAfter,cell)
		  cell.Label1.Text = "An Inserted CELL: " + chr(13) + "> #" + cstr(InsertAfter)  + "  / Insert batch #: " + cstr(Batch)
		  KLTableView1.InsertCell(InsertAfter, true, false)  //Animated + Do Not Commit Inserts automatically....
		  KLTableView1.CommitInserts(true) //We are done inserting to our model, so lets commit. (With Animations)
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button8
	#tag Event
		Sub Action()
		  //To insert, first we add the model to our datasource (Array), then we let the tableview controller know we want to insert that index... After we are done inserting.. We commit the inserts.
		  Dim InsertAfter as integer = Self.CellSelected
		  
		  If InsertAfter < 0 then InsertAfter = 0 //No selection? Let's insert at the begining...
		  
		  For i as integer = InsertAfter to InsertAfter+3 //We want to insert at the selection + 3
		    Dim Cell as new CellView
		    CellArray.Insert(i,cell) // We update our data source (model)
		    cell.Label1.Text = "An Inserted CELL: " + chr(13) + "> #" + cstr(i)  + "  / Insert batch #: " + cstr(Batch) //Change some stuff to diferentiate it in the view.
		    KLTableView1.InsertCell(i, true, false)  //Command the TableView insert (Animated + Do Not Commit Inserts automatically.... Until we are done looping!
		  next i
		  
		  Self.CellSelected = InsertAfter + 3 //Compute where the new selection is.. (It changed the index after the selection).
		  
		  Batch = Batch + 1 //Keep track of the insert batch so we can see it in the cells textbox.
		  
		  KLTableView1.CommitInserts(true) //We are done inserting to our model, so lets commit.  (With animations)
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Action()
		  //This method will append a cell without animations at the end of the tableview.. This is the most efficient way of adding cells without overhead.
		  Dim Cell as new CellView
		  
		  CellArray.Append(Cell) //We first append the cell to the datasource
		  KLTableView1.AppendCell //We then command the tableview controller to append it. (It will look for the last cell in the datasource (array)/
		  
		  cell.Label1.Text = "This is an appended CELL, originally at index: " + cstr(CellArray.IndexOf(Cell))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Action()
		  KLTableView1.ScrollToCellIndex(20, KLTableViewController.ScrollToMode.Bottom)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button9
	#tag Event
		Sub Action()
		  //We first need to tell the TableViewController that we want to delete an index.. Then we remove it from our datasource (Array). And then we commit the changes to the TableViewController.
		  
		  Self.KLTableView1.InhibitScrollToEndEvent = True
		  
		  If (Self.CellArray.Ubound < 5) then
		    LBL_Status.Text = "Not enough cells to delete"
		    Return
		  end if
		  
		  
		  For i as integer = 5 DownTo 0
		    Dim Cell as WebContainer = self.CellArray(i)
		    
		    KLTableView1.DeleteRow(i)
		    Self.CellArray.Remove(i)
		  next i
		  
		  
		  KLTableView1.CommitDeletes
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		InheritedFrom="WebControl"
		#tag EnumValues
			"0 - Auto"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow North East"
			"12 - Arrow North West"
			"13 - Arrow South East"
			"14 - Arrow South West"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Group="ID"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Group="Position"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Group="Position"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OpenEventFired"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebPage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
		InheritedFrom="WebControl"
	#tag EndViewProperty
#tag EndViewBehavior
