package edu.isi.bmkeg.digitalLibraryModule.controller
{	
	import edu.isi.bmkeg.pagedList.events.*;
	import edu.isi.bmkeg.ftd.rl.events.*;
	import edu.isi.bmkeg.digitalLibraryModule.model.DigitalLibraryModel;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Command;
	
	public class PagedListRetrievePageCommand extends Command
	{
	
		[Inject]
		public var event:PagedListRetrievePageEvent;

		[Inject]
		public var model:DigitalLibraryModel;
				
		override public function execute():void
		{
			this.dispatch(
				new ListFTDPagedEvent(
					model.queryFtd, event.offset, event.count
				)
			);
			
		}
		
	}
	
}