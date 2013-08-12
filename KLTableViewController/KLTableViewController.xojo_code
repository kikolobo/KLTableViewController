#tag WebPage
Begin WebContainer KLTableViewController
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   558
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   Style           =   "273953011"
   TabOrder        =   0
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   414
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebAnimator CellAnimator
      Cursor          =   0
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   20
      LockedInPosition=   False
      Motion          =   0
      Scope           =   2
      Style           =   "0"
      TabOrder        =   -1
      TabPanelIndex   =   "0"
      Top             =   20
      VerticalCenter  =   0
      Visible         =   True
      Width           =   32
      ZIndex          =   1
      _NeedsRendering =   True
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub ContentsScrolled(x as integer, y as integer)
		  me.ScrollPosY = y
		  
		  If LoadingData = true then Return
		  If (RaiseEvent NumberOfRows-1) < 0 then Return
		  
		  Dim LoadMoreTriggerValue as integer =LastInsertedCell.Top + LastInsertedCell.Height - me.Height
		  
		  if (y >= LoadMoreTriggerValue AND InhibitScrollToEndEvent = False) then 
		    RaiseEvent TableScrolledToEnd 
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  //ReloadData
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AppendCell()
		  self.LoadingData = True
		  
		  Dim Cell as WebContainer
		  Dim PreviousCell as WebContainer
		  Dim NumberOfRows as integer =  RaiseEvent NumberOfRows
		  
		  Cell = RaiseEvent CellForRowAtIndex(NumberOfRows-1)
		  PreviousCell = GetPreviousCell(NumberOfRows-1)
		  
		  self.DoEmbedWithinAfterPreviousCell(cell, PreviousCell)
		  self.LoadingData = False
		  
		  RaiseEvent CellAppended(Cell)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CancelChanges()
		  //Called to cancel an Insert or Delete operation, who's commit counterpart hasn't been called,.
		  Self.LoadingData = False
		  Redim Self.DeleteCellQueue(-1)
		  Redim Self.InsertCellQueue(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CellSelectedNotification(Cell as KLTableViewCell)
		  //This should only be called from within the CELL Only!!!
		  Dim CellIndex as integer = self.SelectionArray.IndexOf(Cell)
		  
		  If CellIndex <> -1 then
		    CellUnSelectedNotification(Cell)
		    Return
		  end if
		  
		  Dim ShouldSelect as Boolean = True
		  RaiseEvent ShouldSelectCell(WebContainer(Cell), ShouldSelect) 
		  
		  If ShouldSelect = false then Return
		  
		  If self.SingleSelectionMode then
		    Self.DeselectAllCellsExcept(Cell)
		  end if
		  
		  Cell.SetSelected
		  self.SelectionArray.Append Cell
		  System.DebugLog("SELECTED")
		  
		  RaiseEvent CellSelected(WebContainer(Cell))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CellUnSelectedNotification(Cell as KLTableViewCell)
		  //This should only be called from within the CELL Only!!!
		  
		  
		  Dim ShouldUnSelect as Boolean = True
		  RaiseEvent ShouldUnSelectCell(WebContainer(Cell), ShouldUnSelect)
		  
		  If ShouldUnSelect = false then Return
		  
		  Cell.SetUnSelected
		  
		  Dim CellIndex as integer = self.SelectionArray.IndexOf(Cell)
		  
		  
		  if CellIndex <> -1 then self.SelectionArray.Remove(CellIndex)
		  
		  RaiseEvent CellUnSelected(WebContainer(Cell))
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearTableView()
		  
		  Self.LoadingData = true
		  
		  For i as integer = me.ControlCount-1 DownTo 0
		    
		    if me.ControlAtIndex(i) isA WebContainer then
		      Dim IteratedCell as WebContainer = WebContainer(me.ControlAtIndex(i))
		      
		      Dim IndexOfSelection as integer = me.SelectionArray.IndexOf( KLTableViewCell(IteratedCell) )
		      If IndexOfSelection > -1 then
		        KLTableViewCell(IteratedCell).SetUnSelected
		      end if
		      
		      IteratedCell.Visible = false
		      'IteratedCell.Close
		    end if
		    
		  next i
		  
		  
		  Me.SetDimensions(-1)
		  Self.LoadingData = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommitDeletes(Optional Animated as Boolean = true)
		  For i as integer  = UBound(self.DeleteCellQueue) DownTo 0
		    Dim CellIndex as integer =  Self.DeleteCellQueue(i).Left
		    Dim Cell as WebContainer = Self.DeleteCellQueue(i).Right
		    
		    Self.CellAnimator.Move(Cell, 0-Cell.Width-1,Cell.Top, 0.2)
		    Self.CellAnimator.Opacity(Cell, 0, 0.5)
		    
		    RaiseEvent CellIndexDeleted(CellIndex)
		  next
		  
		  Self.reArrangeCellsFromIndex(Self.DeleteCellQueue(Self.DeleteCellQueue.Ubound).Left, true, true, false)
		  
		  Redim Self.DeleteCellQueue(-1)
		  
		  RaiseEvent AllPendingCellsDeleted
		  
		  Self.LoadingData = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommitInserts(Optional Animated as boolean = True)
		  RaiseEvent WillBeginCellLoading
		  
		  For i as integer = 0 To UBound(self.InsertCellQueue)
		    Dim CellIndex as integer =  Self.InsertCellQueue(i).Left
		    Dim Cell as WebContainer = Self.InsertCellQueue(i).Right
		    
		    Self.DoEmbedWithinAfterPreviousCell(Cell, self.GetPreviousCell(CellIndex))
		    Self.CellAnimator.Opacity(Cell, 0, 0)
		    RaiseEvent CellInserted(Cell)
		  next 
		  
		  Self.reArrangeCellsFromIndex(Self.InsertCellQueue(0).Left, true, true)
		  
		  Redim Self.InsertCellQueue(-1)
		  RaiseEvent AllPendingCellsInserted
		  
		  Self.LoadingData = False
		  RaiseEvent CellLoadingComplete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteRow(CellIndex as integer)
		  Self.LoadingData = True
		  
		  Dim CellTop as integer = self.GetPreviousCellBottom(CellIndex)
		  Dim CelltoDelete as WebContainer = RaiseEvent CellForRowAtIndex(CellIndex)
		  Dim CellPair as Pair
		  
		  
		  CellPair = Cellindex : CelltoDelete
		  
		  self.DeleteCellQueue.Append CellPair
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeselectAllCells()
		  Self.DeselectAllCellsExcept()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeselectAllCellsExcept(Optional Cell as KLTableViewCell = nil)
		  For Each IteratedCell as KLTableViewCell in SelectionArray
		    If (IteratedCell <> Cell) then 
		      IteratedCell.SetUnSelected
		      RaiseEvent CellUnSelected(WebContainer(IteratedCell))
		      
		      Dim CellIndex as integer = self.SelectionArray.IndexOf(IteratedCell)
		      if CellIndex <> -1 then self.SelectionArray.Remove(CellIndex)
		      
		      
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoEmbedWithinAfterPreviousCell(Cell as WebContainer, PreviousCell as WebContainer)
		  Cell.Visible = true
		  
		  If (Cell isA KLTableViewCell) then
		    KLTableViewCell(Cell).SetReferenceToController(Self)
		  end if
		  
		  Cell.EmbedWithin(self, 0, PreviousCell.Top + PreviousCell.Height , cell.Width, cell.Height)
		  
		  self.SetDimensions(RaiseEvent NumberOfRows-1)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCurrentScrollPosition() As Integer
		  Return me.ScrollPosY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPreviousCell(CellIndex as integer) As WebContainer
		  RaiseEvent WillBeginCellLoading
		  
		  Dim NumberOfRows as integer =  RaiseEvent NumberOfRows
		  Dim Cell as WebContainer
		  Dim PreviousCell as WebContainer
		  
		  If CellIndex <= 0 then
		    PreviousCell = new WebContainer
		    PreviousCell.Height = 0
		    PreviousCell.Top = 0
		  else
		    PreviousCell = CellForRowAtIndex(CellIndex-1)
		  end if
		  
		  Return PreviousCell
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPreviousCellBottom(CellIndex as integer) As Integer
		  Dim PC as WebContainer = self.GetPreviousCell(CellIndex)
		  
		  Return  PC.Top + PC.Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertCell(CellIndex as integer, Optional Animated as boolean = true, Optional CommitInserts as boolean = true)
		  Self.LoadingData = True
		  
		  Dim CellTop as integer = self.GetPreviousCellBottom(CellIndex)
		  Dim CelltoInsert as WebContainer = RaiseEvent CellForRowAtIndex(CellIndex)
		  Dim CellPair as Pair
		  
		  CellPair = Cellindex : CelltoInsert
		  
		  self.InsertCellQueue.Append CellPair
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub reArrangeCellsFromIndex(CellIndex as integer, optional animated as boolean = true, autoPlay as boolean = true, optional FadeInAfterArrange as boolean = true)
		  Self.LoadingData = True
		  
		  Dim AnchorCell as WebContainer
		  
		  
		  AnchorCell = Self.GetPreviousCell(CellIndex)
		  
		  Dim HeightToCompensate as Double = AnchorCell.Height
		  Dim TopStart as Double = AnchorCell.Top + HeightToCompensate
		  Dim LastCellIndex as integer =  RaiseEvent NumberOfRows-1
		  
		  if (animated) then CellAnimator.AddNextKeyFrame(0.1)
		  
		  For Index as integer = CellIndex to LastCellIndex
		    Dim Cell as WebContainer = RaiseEvent CellForRowAtIndex(Index)
		    
		    if (animated) then
		      
		      CellAnimator.Move(Cell,0, TopStart, 0.5)
		      If FadeInAfterArrange = true then CellAnimator.Opacity(Cell,100,0.5)
		      
		    else
		      Cell.Top = TopStart
		    end if
		    
		    TopStart = TopStart + Cell.Height
		  Next index
		  
		  if (Animated AND AutoPlay) then
		    CellAnimator.Play("RearangeCells")
		  else
		    Self.LoadingData = False
		    Self.SetDimensions(RaiseEvent NumberOfRows-1)
		  end if
		  
		  
		  Self.LoadingData = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReloadData()
		  RaiseEvent WillBeginCellLoading
		  
		  self.ClearTableView
		  self.LoadingData = True
		  
		  Dim NumberOfRows as integer =  RaiseEvent NumberOfRows
		  
		  For i as integer = 0 to NumberOfRows-1
		    Dim Cell as WebContainer
		    Dim PreviousCell as WebContainer
		    
		    Cell = RaiseEvent CellForRowAtIndex(i)
		    PreviousCell = GetPreviousCell(i)
		    
		    self.DoEmbedWithinAfterPreviousCell(cell, PreviousCell)
		    
		  next i
		  
		  
		  self.LoadingData = False
		  RaiseEvent CellLoadingComplete
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToCellIndex(Index as Integer, Mode as ScrollToMode)
		  If RaiseEvent NumberOfRows <= 0 then Return
		  
		  Dim CellToScroll as WebContainer = RaiseEvent CellForRowAtIndex(Index)
		  
		  
		  Select Case Mode
		    
		  Case KLTableViewController.ScrollToMode.Top
		    Self.ScrollTo(0,CellToScroll.Top)
		    
		  Case KLTableViewController.ScrollToMode.Middle
		    Self.ScrollTo(0,(CellToScroll.Top + (CellToScroll.Height/2)) - (me.Height / 2) )
		    
		  Case KLTableViewController.ScrollToMode.Bottom
		    Self.ScrollTo(0,(CellToScroll.Top - Me.Height + CellToScroll.Height))
		    
		  end select
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetDimensions(TheLastCellIndex as integer)
		  
		  If TheLastCellIndex = -1 then
		    self.LastInsertedCell = new WebContainer
		    self.LastInsertedCell.Top = 0
		    self.LastInsertedCell.Height = 0
		  else
		    self.LastInsertedCell = RaiseEvent CellForRowAtIndex(TheLastCellIndex)
		  end if
		  
		  self.LastInsertedCellBottom = LastInsertedCell.Top+ LastInsertedCell.Height
		  
		  //self.CanvasHeight = self.LastInsertedCellBottom 
		  //If self.LastInsertedCellBottom < self.Height then CanvasHeight = self.Height
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StillLoadingData() As Boolean
		  if (LoadingData) then
		    System.DebugLog("[KLTableView] WARNING: TableView is still loading data. Can't cancel this process. Some DATA might got out of SYNC.")
		    Return true
		  end if
		  
		  Return false
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AllPendingCellsDeleted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AllPendingCellsInserted()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellAppended(Cell as WebContainer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellForRowAtIndex(Index as integer) As WebContainer
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellIndexDeleted(CellIndex as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellInserted(Cell as WebContainer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellLoadingComplete()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellSelected(Cell as WebContainer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellUnSelected(Cell as WebContainer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NumberOfRows() As integer
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldSelectCell(Cell as WebContainer, byRef ShouldSelect as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldUnSelectCell(Cell as WebContainer, byRef ShouldUnSelect as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TableScrolledToEnd()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillBeginCellLoading()
	#tag EndHook


	#tag Note, Name = Readme+Info
		Written by : Francisco Lobo de la Garza 
		From: Monterrey N.L Mexico
		Contact: via twitter: @kikolobo or XOJO Forums @(Francisco Lobo)
		Website: http://www.kikolobo.com
		Version : 0.1 (Beta) [August 11th 2013]
		
		|========================================[RESTRICTIONS]=========================================|
		| This piece of code is free as free speech. The only condition for use is that you DON'T repackage this code in whole or in part and sell it or resell it. 
		| Also if you will use it in a commercial application, we require that you add the following to the credits screen or splash scren:
		|                     "TableView based on KLTableViewController written by Francisco Lobo de la Garza"
		|
		| You CAN however fully use this code in your commercial or paid application in whole or in part without PAYMENT, ROYALTY or authorization from.
		| the author. If you however improve the code of this library or class you are required to contribute it to the open source community using the official
		| channels.
		|
		| Improving code is a team effort that will result in better tools for all! Please share! and feel free to send any suggestion thru twitter or  XOJO forums.
		|
		|
		
		|======================================[REVISION HISTORY]========================================|
		| Version 0.1 (Beta)  -  July 29th 2013
		|   - Initial Release
		|
		|   > Known Issues (1.0):
		|       * Not known issues exist.
		|
		| IMPORTANT NOTICE:
		| This project is in early beta phase,  Please test extensively before implementing it.
		| As allways, the developers or the contributors DO NOT take responsability or liability for any damage that might ocured directly or indirectly of implemmenting
		| this open source contribution, project, classes or code. USE AT YOUR OWN RISK!
		
		
		
		
		[END OF MESSAGE]
		
	#tag EndNote


	#tag Property, Flags = &h0
		AutoToggleSelection As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DeleteCellQueue() As Pair
	#tag EndProperty

	#tag Property, Flags = &h0
		InhibitScrollToEndEvent As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private InsertCellQueue() As Pair
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastInsertedCell As WebContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastInsertedCellBottom As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LoadingData As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ScrollPosY As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SelectionArray() As KLTableViewCell
	#tag EndProperty

	#tag Property, Flags = &h0
		SingleSelectionMode As Boolean = True
	#tag EndProperty


	#tag Enum, Name = ScrollToMode, Type = Integer, Flags = &h0
		Top = 0
		  Bottom = 1
		Middle = 2
	#tag EndEnum


#tag EndWindowCode

#tag Events CellAnimator
	#tag Event
		Sub AnimationComplete(Tag As Variant)
		  if (tag= "RearangeCells") then
		    Self.SetDimensions(RaiseEvent NumberOfRows-1)
		    self.LoadingData = False
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AutoToggleSelection"
		Visible=true
		Group="TableView Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
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
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InhibitScrollToEndEvent"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		InheritedFrom="Object"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollbarsVisible"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="SingleSelectionMode"
		Visible=true
		Group="TableView Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
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
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
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
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
		InheritedFrom="WebControl"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
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
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
		InheritedFrom="WebControl"
	#tag EndViewProperty
#tag EndViewBehavior
