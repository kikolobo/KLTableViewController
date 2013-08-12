#tag Interface
Protected Interface KLTableViewCell
	#tag Method, Flags = &h0
		Function IsSelected() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReferenceToController(Controller as KLTableViewController)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelected()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetUnSelected()
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface
