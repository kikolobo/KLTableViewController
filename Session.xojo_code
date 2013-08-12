#tag Class
Protected Class Session
Inherits WebSession
	#tag Constant, Name = ErrorDialogCancel, Type = String, Dynamic = True, Default = \"Do Not Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogMessage, Type = String, Dynamic = True, Default = \"This application has encountered an error and cannot continue.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogQuestion, Type = String, Dynamic = True, Default = \"Please describe what you were doing right before the error occurred:", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogSubmit, Type = String, Dynamic = True, Default = \"Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYou, Type = String, Dynamic = True, Default = \"Thank You", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYouMessage, Type = String, Dynamic = True, Default = \"Your feedback helps us make improvements.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptInstructions, Type = String, Dynamic = True, Default = \"To turn Javascript on\x2C please refer to your browser settings window.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptMessage, Type = String, Dynamic = True, Default = \"Javascript must be enabled to access this page.", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveConnectionCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BrowserVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GMTOffset"
			Group="Behavior"
			Type="Double"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
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
			Name="LanguageCode"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="WebSession"
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
			Name="PageCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
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
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="WebSession"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Expiration"
			Group="Behavior"
			InitialValue="-1"
			Type="Double"
			InheritedFrom="WebSession"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
