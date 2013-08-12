#tag Class
Protected Class App
Inherits WebApplication
	#tag Note, Name = README-HOWTO
		Written by : Francisco Lobo de la Garza
		From: Monterrey N.L Mexico
		Contact: via twitter: @kikolobo or XOJO Forums @(Francisco Lobo)
		Website: http://www.kikolobo.com
		Version : 0.1 (Beta) [August 11th 2013]
		
		Please see the notes inside KLTableViewController for more information.
		
		See the example in SampleWebPage to learn tips on how to implement the controller.
		
		
		BASIC USAGE & DEMO APP INFO:
		
		KLTableViewController (TVC) is implemented using a data source paradigm. In this kind of pattern,
		you keep responsibility of the datasource (an array in this example) and the TVC queries your datasource thru events.
		We use two events for this :  NumberOfCells and CellForRowAtIndex to get the cells from you.
		You are responsible of instantiating the cell when requested and providing it. We use in this example an array as an example of a common datasource,
		but you can use whatever you want. In order to keep the datasource and the TVC in sync, you have to implement several methods to notify and change your cells in the TVC.
		For instance to insert a cell or delete one, there is a proper order to perform this. (see the examples in the buttons on the side). Its easy. But you have to follow convention
		so that the TVC works properly and in harmony with your datasource.
		
		The TVC has been written from the ground up for performance. We implemented some events that will aid to improve the appearance of speed and to prevent
		to the extent possible locking the main thread and thus the user interface.
		
		From simpler animations, and not duplicating the data source, to lazy loading of unseen or unused cells we covered a wide variety of technics that should make the
		user experience better. Batch insertions and deletions are also implemented in a way that will help minimize the time the TVC takes to process the cells.
		
		TVC tries to leave more responsibility to the developer so that he can have more flexibility on how to implement it to his application. It is my intention
		to provide greater features. However I want to build it slow and solid and also let other developers contribute their improvements and suggestions to the code base.
		
		Lazy loading is implemented using an event and a common method (TableScrolledToEnd + AppendCell). See the examples. But this will give you a bunch of flexibility on how
		to implement this according to your requirements. We use one approach on our example but there are many ways that might work better for you.
		
		This project is in early beta phase,  Please test extensively before implementing it.
		As allways, the developers or the contributors DO NOT take responsability or liability for any damage that might ocured directly or indirectly of implemmenting
		this open source contribution, project, classes or code. USE AT YOUR OWN RISK!
		
		The cells are regular WebContainers in any shape or form, however they most comply with the KLTableViewCell interface for selection support. 
		Whenever you want your cell to have the ability to be selected, you should notify the TVC that your cell most be selected by calling the TVC method
		(CellSelectedNotification), and then your cell will be called the SetSelected, method in that moment you should do any style changes to your container so that the user will know its selected. 
		Same thing with de selections. The TVC will notify its implementer (In this example the webpage) that a cell was selected by means of the CellSelected event.
		If the TVC is in single selection mode, the TVC, will call all cells for the SetUnSelected method, and will also call the CellUnSelected event in the implementer 
		(Webpage in this case) for every cell that was un-selected. In single selection mode, only one cell will be unselected at a time. 
		If the toggle mode is enabled (see properties in prop inspector), selecting a cell two times will result in a de-selection on the second click. See the example for further tips.
		
		
		iOS notice:
		IOS has some troubles with the selection if there are elements (labels, textfields, pictures, etc) in the front of the cell. This will block the MouseDown event for part 
		of the cell. We recommend you use a transparent rectangle infront of everything and implement the mouse down there. Some iOS versions of safari don't have this
		issue.
		
		
		
		
	#tag EndNote


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
